import express from 'express'
import createError from 'http-errors'

import * as project from '../../../models/api/project'

const router = express.Router()

/* GET home page. */
router.get('/Dashborad', function (req, res, next) {
    // res.render('admin/index', { title: 'ໜ້າຫຼັກ' })
    try {

        project.all((err, result) => {

            if (err) {
                next(createError(500))
            } else if (result.length > 0) {

                
                res.render('dashboard/index-view',{
                    data:result
                })

                // return res.json({
                //     status: 200,
                //     data: result
                // })

            } else {

                return res.json({
                    status: 404,
                    data: result
                })
            }
        })

    } catch (error) {
        next(error)
    }
    
})

export default router

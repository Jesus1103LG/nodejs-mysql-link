const router = require('express').Router()

router.get('/',(req,res)=>{
    res.render('index')
})

router.get('/about',(req,res)=>{
    res.send('todo about')
})


module.exports = router
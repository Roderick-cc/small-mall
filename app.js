const express =require('express')
const router =require('./router')

const bodyParser =require('body-parser')
const session=require('express-session')

// const morgan =require('morgan')
const config =require('./config')




const app = express()


/**
*配置解析表单请求体
*/
app.use(bodyParser.urlencoded({extended:false}))
app.use(bodyParser.json())
// app.get('/',(req,res,next)=>{
// 	res.status(200).send('api server is runing ..')
// })


/**
*配置使用Session中间件
*/
app.use(session({
	secret:'sessioncode',
	resave: false,
	saveUninitialized: false
}))

//把路由运用到APP中
app.use(router)


//try catch 配置next中间件
//统一处理500错误
app.use((err,req,res,next)=>{
	res.status(500).json({
		error:err.message
	})
})






// app.listen(3000,()=>{
// 	console.log('App is runing at port 3000.')
// })

app.listen(config.port,config.host, () =>{
	console.log(`APP visit http://${config.host}:${config.port}`)
})












const db =require('../models/db')
const md5=require('blueimp-md5')

//获取登陆的用户状态
exports.get= (req,res,next) =>{
	try{
		const {user}=req.session
		if(!user){
			return	res.status(401).json({
					error : 'Unanthorized'
				})
		}
		res.status(200).json(user)
	}
	catch(err){
		next(err)
	}
}


// 用户登陆
exports.create= async (req,res,next) =>{
	//接受表单数据---->去数据库查找邮箱 和密码是否匹配
	//匹配数据库处理登陆请求
	//发送响应

	try{
		const body=req.body
		body.passwords= md5(md5(body.passwords))
		const sqlStr=`
			SELECT * FROM users WHERE email='${body.email}' and passwords='${body.passwords}'`
		const [user] = await db.query(sqlStr)
		if(!user){
			res.status(404).json({error: 'Invalid email or passwords'})
		}
		//登陆成功记录session
		req.session.user=user
		//发送响应
		res.status(201).json(user)

	}
	catch(err){
		next(err)
	}






	
}

//注销登陆
exports.destroy= (req,res,next) =>{
	delete req.session.user
	res.status(201).json({})
	
}

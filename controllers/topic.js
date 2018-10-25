const moment =require('moment')
const db= require('../models/db')

exports.list= async (req,res,next) =>{
	//req.query 是获取URL中？后面的值  ：3000/topics?_page=1&_limit=2
	let {_page=1,_limit =20} = req.query
	console.log(req.query)// ===>{_page: '1',limit: '2'}
	if(_page <1){
		_page = 1 
	}
	if(_limit < 1){
		_limit=1
	}
	if (_limit >20) {
		_limit= 20
	}

	const start =(_page -1) *_limit 
	try{
		const sqlStr=`
		SELECT * FROM topice LIMIT ${start},${_limit}`
		//查询文章总数
		const [{count}] = await db.query(`SELECT COUNT(*) as count FROM topice`)
		// console.log(count)
		const topice= await db.query(sqlStr)
		// res.status(200).json(topice)

		res.status(200).json({topice,count})
	}catch(err){
		next(err)
	}

}

exports.update=async (req,res,next) =>{
	try{
		const {id} =req.params
		const body=req.body
		const sqlStr=`UPDATE topice SET title='${body.title}',
		content='${body.content}',
		modify_time='${moment().format('YYYY-MM-DD hh:mm:ss')}'
		WHERE id=${id}
		`
		
		//执行更新操作
		await db.query(sqlStr)
		const [updateTopic] =await db.query(`SELECT * FROM topice WHERE id=${id}`)

		res.status(201).json(updateTopic)

	}catch(err){
		next(err)
	}


	
}


exports.getparams = async (req,res,next) => {

	try{
		const { id } = req.params
		const sqlStr = `SELECT * FROM topice WHERE id=${id}`
		const topics = await db.query(sqlStr)
		res.status(200).json(topics)
	}catch(err){
		next(err)
	}

}







exports.create= async (req,res,next) =>{
try{
	//中间验证过是否存在用户
	// const {user} =req.session
	// if(!user){
	// 	return res.status(401).json({
	// 		error:'Unauthorized'
	// 	})
	// }


	const body =req.body
	body.create_time=moment().format('YYYY-MM-DD hh:mm:ss')
	body.modify_time=moment().format('YYYY-MM-DD hh:mm:ss')
	// body.use_id=user.id
	body.use_id=req.session.user.id

	const sqlStr=`
		INSERT INTO topice(title,content,use_id,create_time,modify_time)
		VALUES('${body.title}',
		'${body.content}',
		'${body.use_id}',
		'${body.create_time}',
		'${body.modify_time}'
		)`

		// query 方法：查询返回数组
		//增删改返回对象

	const ret = await db.query(sqlStr)
	const [topic] =await db.query(`SELECT * FROM topice WHERE id=${ret.insertId}`)
	res.status(201).json(topic)


}
catch(err){
	next(err)

}

}




exports.delete=async (req,res,next) =>{
	//url中的:id 动态路由参数
	//查询字符串 ：req.query
	//post请求体： req.body
	//动态路劲参数： req.params

	try{
		
		const {id} =req.params
		// const sqlStr = `DELETE FROM topice WHERE id=${id}`
		// const ret = await db.query(sqlStr)
		await db.query(`DELETE FROM topice WHERE id=${id}`)


		res.status(201).json({})

	}catch(err){
		next(err)
	}

}
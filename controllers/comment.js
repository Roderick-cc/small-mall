const db =require('../models/db')



exports.list= async (req,res,next) =>{

	try{
		const {topic_id} =req.query
		const sqlStr=`SELECT * FROM comments WHERE topic_id=${topic_id}`
		const comments = await db.query(sqlStr)
		res.status(200).json(comments)
	}catch(err){
		next(err)
	}






	
}


exports.create= async (req,res,next) =>{
try{
	//获取表单数据
	//操作数据库
	//发送响应数据
	const {
		content ='',
		topic_id, //文章的ID   user_id 用户的id
		// reply_id=0
	}= req.body


	const sqlStr = ` INSERT INTO comments(content,create_time,modify_time,topic_id,user_id) 
	VALUES(
	'${content}',
	'${Date.now()}',
	'${Date.now()}',
	'${topic_id}',
	'${req.session.user.id}'
	 )`

	 //当进行增删改操作的时候，db.query 方法返回的是一个对象
	const { insertId } = await db.query(sqlStr)

	//执行查询的操作是，返回的是数组
	const [comment] =await db.query(`SELECT * FROM comments WHERE id=${insertId}`)


	 res.status(201).json(comment)

}catch(err){
	next(err)
}






}

exports.update= (req,res,next) =>{

	
}


exports.destroy= (req,res,next) =>{

}
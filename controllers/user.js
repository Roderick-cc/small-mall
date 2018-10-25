const md5 = require('blueimp-md5')
const moment =require('moment')
const db=require('../models/db')

const sqlHelper=require('../utilities/sqlhelper')


exports.list= async(req,res,next) =>{
	 try{
	 	const andComditionStr =sqlHelper.andCondition(req.query)
	 	const sqlStr = `SELECT * FROM users WHERE ${andComditionStr}`
	 	res.status(200).json(await db.query(sqlStr))
	 }
	 catch(err){
	 	next(err)
	 }


}


exports.create= async (req,res,next) =>{
	const body=req.body

	const sqlStr = 
		`INSERT INTO users(username,passwords,email,nickname,avatar,gender,create_time,modify_time)
		VALUES('${body.username}',
		'${md5(md5(body.passwords))}',
		'${body.email}',
		'${body.nickname}',
		'default-avatar.png',
		0,
		'${moment().format('YYYY-MM-DD hh:mm:ss')}',
		'${moment().format('YYYY-MM-DD hh:mm:ss')}')`




	try{
		const ret = await db.query(sqlStr)
		//依据id将数据console出来
		const [user] = await db.query(`SELECT * FROM users WHERE id='${ret.insertId}'`)
		// console.log(user[0])
		res.status(201).json(user)

	}
	catch(err){
		// res.status(500).json({
		// 	error: err.message
		// })
		next(err)
	}




}

exports.update= (req,res,next) =>{

	
}


exports.delete= (req,res,next) =>{

}
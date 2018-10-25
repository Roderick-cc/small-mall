const express= require('express')
const router =express.Router()


const userController =require('./controllers/user')
const sessionController =require('./controllers/session')
const topicController =require('./controllers/topic')
const commentController =require('./controllers/comment')

const db=require('./models/db')

/**
*	用户资源
*/
router
	.get('/users',userController.list)
	.post('/users',userController.create)
	.patch('/users/:id',userController.update)
	.delete('/users/:id',userController.delete)



/**
*	话题 文章资源
*/

//判断用户是否登录
function checkLogin(req,res,next){
	if(!req.session.user){
		return res.status(401).json({
			error: 'Unauthorized'
		})
	}
	next()
}
//判断修改的话题id是否是登录用户的id
async function checkTopic(req,res,next){
	try{
		const {id} =req.params
		//查询id
		const [topic] =await db.query(`SELECT * FROM topice WHERE id=${id}`)
		//话题不存在
		if(!topic){
			return res.status(404).json({
				error :" topic not Found"
			})
		}
		//如果话题不属于用户
		if(topic.use_id !== req.session.user.id){
			return res.status(400).json({
				error : 'DELETE Invalid'
			})
		}


		next()
	}catch(err){
		next(err)
	}


}



router
	.get('/topics',topicController.list)
	.get('/topics/:id',topicController.getparams)
	.post('/topics',checkLogin,topicController.create)
	.patch('/topics/:id',checkLogin,checkTopic,topicController.update)
	.delete('/topics/:id',checkLogin,checkTopic,topicController.delete)



/**
*	评论资源
*/

router
	.get('/comments',commentController.list)
	.post('/comments',checkLogin,commentController.create)
	.patch('/comments/:id',checkLogin,commentController.update)
	.delete('/comments/:id',checkLogin,commentController.destroy)


/**
*会话 登陆管理
*/
router
	.get('/session',sessionController.get)
	.post('/session',sessionController.create)
	.delete('/session',sessionController.destroy)

/**
*	
*/
module.exports = router
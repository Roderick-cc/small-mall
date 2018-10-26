
const mysql =require('mysql')

const pool=mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: 'root',
	database: 'cms'

})





exports.query =function(sqlStr){

	return new Promise((resolve,reject) => {
		pool.getConnection((err,connection) =>{
			if (err){
				return reject(err)
			}

			connection.query(sqlStr,(err,...args) =>{
				//操作结束，尽早的释放链接
				connection.release()
				if(err){
					return reject(err)
				}
				resolve(...args)
			})
		})
	})
}

























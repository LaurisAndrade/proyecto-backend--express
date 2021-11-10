const pool = require('../config/database')

const model = {};

model.registerUser = async function (data) {
    const sql = `INSERT INTO user SET email = '${data.email}' , username = '${data.username}', password = '${data.password}'`
    const result = pool.query(sql);
    
    return result
}

model.findUserByEmail = async function (email) {
    const sql = `SELECT * FROM user where email = '${email}'`;
    const result = await pool.query(sql);
    return result
}

model.findUserById = async function(data){
    console.log(data);
    const sql = `SELECT * FROM user where id = ${data.id}`;
    const result = pool.query(sql);
    return result
}

module.exports = model;
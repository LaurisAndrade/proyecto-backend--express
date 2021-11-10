const pool =  require('../database')

module.exports = function () {

    async function crear(req){
        console.log(req)
        const data = await pool.query("INSERT INTO usuarios set ?",[req]);
        return data
    }

    return{
        crear
    }
}
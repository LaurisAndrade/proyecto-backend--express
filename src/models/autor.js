const pool =  require('../database')

module.exports = function () {


    async function listAll(req){
        let query = "select * from autores";

        const data = await pool.query(query);
        return data
    }

    async function crear(req){
        console.log(req)
        const data = await pool.query("INSERT INTO autores set ?",[req]);
        return data
    }

    async function modificar(id, req){
        console.log(req)
        try {
            await pool.query("UPDATE autores set ? WHERE id = ?",[req, id]);
            return {
                mensaje:"El autor se actualizo correctamente"
            }
        } catch (error) {
            console.log(error)
            return {
                mensaje:"Se presento un error"
            }
        }
     
    }

    async function eliminar(id){
        console.log(id)
        try {
            await pool.query("DELETE FROM autores WHERE id = ?",[id]);
            return {
                mensaje:"El autor se elimino correctamente"
            }
        } catch (error) {
            console.log(error)
            return {
                mensaje:"Se presento un error"
            }
        }
     
    }



 



    return{
        listAll,
        crear,
        modificar,
        eliminar
        
        
    }
}
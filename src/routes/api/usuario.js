
const express = require('express');
const router = express.Router();
const usuariosController = require('../../controllers/usuariosController');

router.post('/crear', async (req, res) => {
    console.log(req.body);
    const { usuario, contraseña} = req.body;
    const post = await usuariosController.Crear({
        usuario,
        contraseña
    });

    res.json(post)
 
})

module.exports = router
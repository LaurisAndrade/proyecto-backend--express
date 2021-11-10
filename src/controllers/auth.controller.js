const { findUserByEmail, registerUser } = require("../models/auth.model");
const { comparePassword, encrypt } = require("../utils/bcrypt");
const { createToken } = require("../utils/common");

const controller = {};

controller.login = async function (req, res) {
  const { email, password } = req.body;
  const userFinded = await findUserByEmail(email);
  if (userFinded && userFinded[0]) {
    const user = userFinded[0];
    console.log(user);
    const validarContrasena = await comparePassword(password, user.password);
    if (validarContrasena) {
      res.json({
        msg: "Inicio sessión correctamente",
        token : createToken({id: user.id, email,username : user.username }),
        });
    } else {
      res.status(400).json({ msg: "La contraseña es incorrecta" });
    }
  } else {
    res
      .status(400)
      .json({
        mensaje: "No se ha encontrado ninguna cuenta asociada a ese correo",
      });
  }
};

controller.getinfotoken = async function (req, res) {
  const user = req.user;
  res.json(user);
};

controller.register = async function (req, res) {
  try {
    const { email, password, username } = req.body;
    const data = { username, password: await encrypt(password), email };
    const userRegistered = await registerUser(data);
    const token = createToken({ ...data, id: userRegistered.insertId });
    return res.status(201).json({
      msg: "Usuario creado exitosamente",
      token,
    });
  } catch (error) {
    console.log(error);
  }
};

module.exports = controller;
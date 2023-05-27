var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var ProductoSchema = new Schema({
    nombre: {type: String, required: true, max: 20},
    tipo: {type: String, required: true, max: 20},
    precio: {type: Number, required: true, max: 10000}
});

module.exports = mongoose.model('Producto', ProductoSchema);

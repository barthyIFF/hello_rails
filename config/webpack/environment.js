const { environment } = require('@rails/webpacker')

// Inicio da configuração do bootstrap 5
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']  // Not a typo, we're still using popper.js here
}))
// Fim da configuração do bootstrap 5

module.exports = environment

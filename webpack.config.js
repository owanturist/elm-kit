var path = require('path');
var HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
    entry: path.join(__dirname, 'js', 'index.js'),

    output: {
        path: path.join(__dirname, 'dist'),
        filename: '[hash].js',
        hotUpdateChunkFilename: '[id].[hash].hot-update.js',
        hotUpdateMainFilename: '[hash].hot-update.json'
    },

    resolve: {
        extensions: [
            '',
            '.js',
            '.elm'
        ]
    },

    module: {
        noParse: /\.elm$/,
        loaders: [
            {
                test: /\.elm$/,
                include: [
                    path.join(__dirname, 'elm')
                ],
                loader: 'elm-hot-loader!elm-webpack-loader?verbose=true&warn=true&debug=true&pathToMake=node_modules/.bin/elm-make'
            }
        ]
    },

    devServer: {
        stats: 'errors-only',
        historyApiFallback: true
    },

    plugins: [
        new HtmlWebpackPlugin({
            template: path.join(__dirname, 'js', 'index.html'),
            inject: 'body'
        })
    ]
};

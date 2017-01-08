import path from 'path';
import HtmlWebpackPlugin from 'html-webpack-plugin';
import webpackCombineLoaders from 'webpack-combine-loaders';

export default {
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
                test: /.js$/,
                include: [
                    path.join(__dirname, 'js')
                ],
                loader: 'babel'
            },
            {
                test: /\.elm$/,
                include: [
                    path.join(__dirname, 'elm')
                ],
                loader: webpackCombineLoaders([
                    'elm-hot',
                    {
                        loader: 'elm-webpack',
                        query: {
                            verbose: true,
                            warn: true,
                            debug: true,
                            pathToMake: path.join(__dirname, 'node_modules', '.bin', 'elm-make')
                        }
                    }
                ])
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

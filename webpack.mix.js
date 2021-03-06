const mix = require("laravel-mix");
require("dotenv").config();
/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.options({
    processCssUrls: false,
});

if (!mix.inProduction()) {
    mix.webpackConfig({
        devtool: "source-map",
    }).sourceMaps();
}

// ADD YOUR COMPILED ASSETS HERE
mix.sass("resources/css/app.scss", "public/css");
mix.js("resources/js/main/index.js", "public/js/main.js").react();
mix.js("resources/js/Statistics/index.js", "public/js/statistics.js").react();
mix.js(
    "resources/js/Recommendations/index.js",
    "public/js/recommendations.js"
).react();
mix.js(
    "resources/js/ManagersStatistics/index.js",
    "public/js/managersstatistics.js"
).react();
// mix.js("resources/js/Info/index.js", "public/js/info.js").react();
mix.browserSync({
    host: "localhost",
    port: 3000,
    proxy: {
        target: process.env.APP_URL, // Yay! Using APP_URL from the .env file!
    },
});

// add versioning
mix.version();

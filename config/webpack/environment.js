const { environment } = require("@rails/webpacker");

const webpack = require("webpack");

environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    "window.jQuery": "jquery",
    Popper: ["popper.js", "default"],
    select2: "select2",
    'select2.sortable' : 'select2_sortable',
  })
);

// environment.loaders.append("jquery", {
//   test: require.resolve("jquery"),
//   use: [
//     { loader: "expose-loader", options: "$" },
//     { loader: "expose-loader", options: "jQuery" },
//   ],
// });
module.exports = environment;

require( './styles/main.scss' );

var Elm = require( '../elm/Main' );
Elm.Main.embed(document.getElementById('main'), { apiUrl: process.env.API_URL });

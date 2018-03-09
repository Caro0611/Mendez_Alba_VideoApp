var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM video WHERE category = ?', ['Adults'], (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);

      res.render('parents', {
        title: 'Parents',
        message: "Movies for parents",
        movies: result
      });
    }
  });
});

module.exports = router;

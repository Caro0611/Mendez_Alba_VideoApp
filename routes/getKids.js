var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM video WHERE category = ?', ['Kids'], (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);

      res.render('kids', {
        title: 'Kids',
        message: "Movies for Kids",
        movies: result
      });
    }
  });
});

module.exports = router;

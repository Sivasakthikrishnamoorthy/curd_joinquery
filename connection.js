const mysql = require("mysql");
const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "curdop_joindatabase",
});

con.connect((err) => {
  if (err) {
    console.log("Make a Proper Connection");
  } else {
    console.log("Database has been connected succesfully");
  }
});

module.exports = con;

// const mysql = require("mysql");
// const con = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   password: "",
//   database: "curdop_joindatabase",
// });

// con.connect((err) => {
//   if (err) {
//     throw err;
//   }
//   let sql =
//     "SELECT emp_personal.emp_id,emp_personal.emp_name,emp_depno_des.designation FROM emp_personal INNER JOIN emp_depno_des ON emp_personal.emp_id = emp_depno_des.emp_id;"
      
//   con.query(sql, (err, res) => {
//     if (err) {
//       throw err;
//     } else {
//       console.log(res);
//     }
//   });
//   });



const mysql = require("mysql");
const util = require("util");

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "curdop_joindatabase",
});

const queryAsync = util.promisify(con.query).bind(con);

async function getData() {
  try {
    await util.promisify(con.connect).call(con);

    let sql =
      "SELECT emp_personal.emp_id,emp_personal.emp_name,emp_depno_des.designation FROM emp_personal INNER JOIN emp_depno_des ON emp_personal.emp_id = emp_depno_des.emp_id;";

    const res = await queryAsync(sql);
    console.log(res);

    con.end(); // Close the connection

  } catch (err) {
    console.error(err);
  }
}
getData();



const con = require("./connection");
const express = require("express");
const app = express();

const mysql = require("mysql");
const conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "curdop_joindatabase",
});

// Routing
app.get("/", (req, res) => {
  // INNER-JOIN OF 2 TABLES:
  // con.query("SELECT emp_personal.emp_id,emp_personal.emp_name,emp_depno_des.designation FROM emp_personal INNER JOIN emp_depno_des ON emp_personal.emp_id = emp_depno_des.emp_id;", (err, result) => {

  // LEFT-JOIN / RIGHT-JOIN OF 2 TABLES:
  // con.query("select emp_depno_des.designation,emp_hiredate_salary.emp_salary,emp_hiredate_salary.emp_hiredate from emp_depno_des left join emp_hiredate_salary on emp_depno_des.dep_id = emp_hiredate_salary.emp_depno;", (err, result) => {

  //CROSS JOIN(1):
  // con.query("SELECT * FROM emp_personal CROSS JOIN emp_depno_des;", (err, result) => {

  //CROSS JOIN WITH WHERECLAUSE(2):
  // con.query("SELECT emp_personal.emp_id,emp_personal.emp_email,emp_depno_des.designation from emp_personal cross join emp_depno_des where emp_depno_des.emp_id <= 1003;", (err, result) => {

  //CROSS JOIN OF 3 TABLES USING ODERBY(3):
  con.query(
    "SELECT * FROM emp_personal RIGHT JOIN ( emp_hiredate_salary CROSS JOIN emp_depno_des) ON emp_personal.emp_id = emp_depno_des.emp_id ORDER BY emp_hiredate_salary.emp_salary;",
    (err, result) => {
      let table = '<table  style="border-collapse: collapse;">';
      if (err) {
        res.send("Error");
      } else {
        table +=
          '<tr><th style="border: 1px solid black;">Dep ID</th><th style="border: 1px solid black;">Emp ID</th><th style="border: 1px solid black;">Name</th><th style="border: 1px solid black;">Email</th><th style="border: 1px solid black;">Contact</th><th style="border: 1px solid black;">Designation</th><th style="border: 1px solid black;">emp_hiredate</th><th style="border: 1px solid black;">emp_salary</th></tr>';

        result.forEach((row) => {
          table += `<tr style="border: 1px solid black;">
          <td style="border-right: 1px solid black;">${row.dep_id}</td>
          <td style="border-right: 1px solid black;">${row.emp_id}</td>
          <td style="border-right: 1px solid black;">${row.emp_name}</td>
          <td style="border-right: 1px solid black;">${row.emp_email}</td>
          <td style="border-right: 1px solid black;">${row.emp_contact}</td>
          <td style="border-right: 1px solid black;">${row.designation}</td>
          <td style="border-right: 1px solid black;">${row.emp_hiredate}</td>
          <td style="border-right: 1px solid black;">${row.emp_salary}</td>
        </tr>`;
        });

        table += "</table>";
        res.send(table);
      }
    }
  );
});

app.listen(3000);

import express, { json } from 'express'
import mysql from 'mysql';
import swagger from "swagger-ui-express";
import swaggerJson from "../swagger.json";
import cors from "cors";

const app = express();
app.get('/api/cinema/', (req, res) => {
  const connection = mysql.createConnection({
    host: 'database',
    port: 3306,
    user: "root",
    password: "senhaDoUsuarioRoot",
    database: "Cinema"
  });

  connection.connect();

  connection.query(`SELECT * FROM Filme`, (error, result, fields) => {
    if (error) {
      console.log(error);
      res.status(401).json({ error: error })
    } else {
      res.status(200).json({ result })
    }
  });
})


app.use(json());
app.use(cors());
app.use(
  "/",
  swagger.serve,
  swagger.setup(swaggerJson)
);

const PORT: number = 3000;
app.listen(PORT, () => {
  console.log(`the server is running on port ${PORT}`)
})
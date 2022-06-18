const mysql = require('mysql2');
const express = require('express');

const app = express();
const jsonParser = express.json();

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '12354',
    database: 'tea_store'
})
app.use(express.static(__dirname + "/public"));

// app.get('/sql_joins/card_join', (req, res) => {
//     const sql = 'select tea.name, tea.description, tea_photo.url from tea join tea_photo on tea.id = tea_photo.tea_id;';

//     connection.query(sql, (err, result) => {
//         if (err) res.send([]);

//         res.send(result);
//     });
// })


app.get('/sql_joins/:params', (req, res) => {
    //console.log(req.params['params']);
    //const sql = 'select tea.name, tea.description, tea_photo.url from tea join tea_photo on tea.id = tea_photo.tea_id;';
    const sql = req.params['params'];

    connection.query(sql, (err, result) => {
        if (err) res.send([]);
        else
        res.send(result);
    });
})

app.get('/sql_joins', (req, res) => {
    res.sendFile(__dirname + '/public/joins.html');
})

app.get('*', (req, res) => {
    const tableName = req.url.slice(1);
    const sql = 'select * from ' + tableName;
    connection.query(sql, (err, result) => {
        if (err) res.send([]);
        else
        res.send(result);
    });
})

app.post('/addForm', jsonParser, (req, res) => {
    if (!req.body.tableName || !req.body.keys || !req.body.values) {
        res.sendStatus(400);
    }

    const sql = `insert into ${req.body.tableName} (${req.body.keys}) values (${req.body.values.map(val => '"' + val + '"')})`;
    connection.query(sql, (err, result) => {
        if (err) res.sendStatus(400);
        else {
            res.send('ok');
        }
    });
})

app.listen(3000);

//connection.end();
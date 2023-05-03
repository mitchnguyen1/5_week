require('dotenv').config()

const { CONNECTION_STRING } = process.env
const Sequelize = require('sequelize')

const sequelize = new Sequelize(CONNECTION_STRING, {
    dialect: 'postgres',
    dialectOptions: {
        ssl: {
            rejectUnauthorize: false
        }
    }
})

const userId = 2;
const clientId = 1;


module.exports = {
    getUserInfo: (req,res) =>{
        sequelize.query(`SELECT *
        FROM cc_clients AS c
        JOIN cc_users AS u ON c.user_id = u.user_id
        `
        //db sends response in array, return the first one
        ).then(dbRes => res.status(200).send(dbRes[0]))
    },
    updateUserInfo: (req,res) =>{
        let {firstName,lastName,phoneNumber,email,address,city,state,zipCode} = req.body
        let query = `UPDATE cc_users SET
                    first_name = '${firstName}',
                    last_name = '${lastName}',
                    email = '${email}',
                    phone_number = ${phoneNumber}
                    WHERE user_id = ${userId};
                    
                    UPDATE cc_clients SET
                    address = '${address}',
                    city = '${city}',
                    state = '${state}',
                    zip_code = ${zipCode}
                    WHERE user_id = ${userId}`
        sequelize.query(query)
        .then(dbRes => res.sendStatus(200))
        .catch(err => console.log(err))
    },
    getUserAppt: (req,res) =>{
        let query = `SELECT * FROM cc_appointments WHERE client_id = ${clientId} ORDER BY date desc`
        sequelize.query(query)
        .then(dbRes => res.status(200).send(dbRes[0]))
        .catch(err => console.log(err))
    },
    requestAppointment: (req,res) =>{
        let {date, service} = req.body
        let query = `
        INSERT INTO cc_appointments(client_id,date,service_type,notes,approved,completed)
        VALUES(${clientId},'${date}','${service}','',False,False)`
        sequelize.query(query)
        .then(res.sendStatus(200))
        .catch(err => console.log(err))
    }
}
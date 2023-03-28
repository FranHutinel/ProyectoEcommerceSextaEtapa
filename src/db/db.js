import {Sequelize}  from "sequelize";
export const sequelize  = new Sequelize ('name bd','usuario','password',{
    host : '',
    dialect:'postgres'
})



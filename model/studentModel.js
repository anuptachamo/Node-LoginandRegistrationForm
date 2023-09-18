module.exports = (sequelize, DataTypes) => {
    const Student = sequelize.define("students_detail", {
      fullname: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      address: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      grade: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      rollno: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      age: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      contactno: {
        type: DataTypes.STRING,
        allowNull: false,
      }
    
    });
    return Student;
  };

#include "EmployeeDatabase.h"
#include "qsqlerror.h"
EmployeeDatabase::EmployeeDatabase(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    qDebug()<<"Employee Database Constructor"<<Qt::endl;
    createEmpDatabase();
}

EmployeeDatabase::~EmployeeDatabase()
{
    qDebug()<<"Employee Database Distructor"<<Qt::endl;
}

void EmployeeDatabase::createEmpDatabase()
{

    QFile file;

    //connection to the sql Database

    qDebug()<<"Connect Database"<<Qt::endl;
    m_database=QSqlDatabase::addDatabase("QSQLITE");
    QString currentpath=QDir::currentPath()+"/Database.db";
    qDebug()<<"Current path"<<currentpath<<Qt::endl;

    file.setFileName(currentpath);
    file.open(QIODevice::ReadWrite);

    QSqlQuery m_query(m_database);
    m_database.setDatabaseName(currentpath);
    m_database.open();
    if(m_database.isOpen()){
        qDebug()<<"The Database is open"<<Qt::endl;
    }
    else{
        qDebug()<<"The Database is Not Open"<<Qt::endl;
    }

    QString qry("CREATE TABLE PthinksEmployee(empName VARCHAR(20) NOT NULL,empId VARCHAR(20) NOT NULL,eMail VARCHAR(30) NOT NULL,password VARCHAR(30) NOT NULL,confirmPassword VARCHAR(30) NOT NULL,Primary KEY(empId));");
    if(m_query.exec(qry)){
        qDebug()<<"Table Created Successful"<<m_query.lastError()<<Qt::endl;
    }
    else{
        qDebug()<<"Table is Not Created"<<Qt::endl;
    }

}

void EmployeeDatabase::storeEmployeeDeatails(QString m_name, QString m_id, QString m_email, QString m_password, QString m_confirmpassword)
{

    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    QSqlQuery qry(m_database);
    if(m_password==m_confirmpassword)
    {
        qry.prepare("INSERT INTO PthinksEmployee(empName,empId,eMail,password,confirmPassword)"
                    "VALUES (?,?,?,?,?)");
        qry.addBindValue(m_name);
        qry.addBindValue(m_id);
        qry.addBindValue(m_email);
        qry.addBindValue(m_password);
        qry.addBindValue(m_confirmpassword);
        bool success=qry.exec();
        if(success){
            qDebug()<<"Employee Deatails Inserted Successfull"<<Qt::endl;
        }
        else{
            qDebug()<<"Employee id Already Existed"<<Qt::endl;
            qDebug()<<"Please Check the Deatails"<<Qt::endl;
        }
    }
    else{
        setMessegePopQml(false);
        qDebug()<<"MisMatch the Password and ConfirmPassword"<<Qt::endl;
    }

}

void EmployeeDatabase::loginVerify(QString m_id, QString m_password)
{
    qDebug()<<"id="<<m_id<<Qt::endl;
    qDebug()<<"password="<<m_password<<Qt::endl;

    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    QSqlQuery qry(m_database);

    qry.prepare("SELECT * FROM PthinksEmployee");
    if(qry.exec())
    {
        while(qry.next()){
            if(qry.value(1).toString()==m_id && qry.value(3).toString()==m_password){
                setMessegePopQml(true);
                qDebug()<<"Login Success"<<Qt::endl;
                break;

            }
            else{
                setMessegePopQml(false);
                qDebug()<<"invalid userid and password"<<Qt::endl;
            }
        }
    }
}

QString EmployeeDatabase::forgetPasswordVerify(QString m_id, QString m_name, QString m_email)
{
    //get password if the password is forgetted

    QString validpassword;
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    QSqlQuery qry(m_database);
    qry.prepare("SELECT * FROM PthinksEmployee");
    if(qry.exec())
    {
        while(qry.next()){
            if(qry.value(1).toString()==m_id && qry.value(0)==m_name && qry.value(2)==m_email ){
                validpassword=qry.value(4).toString();
//                qDebug()<<"Password="<<validpassword<<Qt::endl;
                qDebug()<<"Deatails are valid"<<Qt::endl;
                setMessegePopQml(true);
                break;
            }
            else{
                setMessegePopQml(false);
                qDebug()<<"Enter Invalid Deatails"<<Qt::endl;
            }
        }
    }
    qDebug()<<"Password="<<validpassword<<endl;
    return validpassword;
}

bool EmployeeDatabase::messegePopQml() const
{
    qDebug()<<"Messege"<<m_messegePopQml<<Qt::endl;
    return m_messegePopQml;
}

void EmployeeDatabase::setMessegePopQml(bool newMessegePopQml)
{
    if(m_messegePopQml == newMessegePopQml)
        return;
    m_messegePopQml=newMessegePopQml;
    qDebug()<<"Messege set"<<m_messegePopQml<<Qt::endl;
    emit messegePopQmlChanged();
}


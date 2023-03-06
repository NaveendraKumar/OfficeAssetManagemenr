#ifndef EMPLOYEEDATABASE_H
#define EMPLOYEEDATABASE_H

#include <QSqlDatabase>
#include <QSqlQuery>
#include <QFile>
#include <QObject>
#include <QDir>
#include <qdebug.h>


class EmployeeDatabase : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool messegePopQml READ messegePopQml WRITE setMessegePopQml NOTIFY messegePopQmlChanged)
public:
    explicit EmployeeDatabase(QObject *parent = nullptr);
    ~EmployeeDatabase();


public:
    void createEmpDatabase();


    bool messegePopQml() const;
    void setMessegePopQml(bool newMessegePopQml);


signals:
    void messegePopQmlChanged();


public slots:

    void storeEmployeeDeatails(QString m_name,QString m_id,QString m_email,QString m_password,QString m_confirmpassword);
    void loginVerify(QString m_id,QString m_password);
    QString forgetPasswordVerify(QString m_id,QString m_name,QString m_email);


private:
    QSqlDatabase m_database;

    bool m_messegePopQml;



};

#endif // EMPLOYEEDATABASE_H

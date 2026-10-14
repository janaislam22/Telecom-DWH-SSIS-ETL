
if db_id('SSIS_Telecom_DB') is null
    create database SSIS_Telecom_DB;
go

use SSIS_Telecom_DB;
go

drop table if exists dbo.fact_transaction;
drop table if exists dbo.error_destination_output;
drop table if exists dbo.err_source_output;
go

create table dbo.fact_transaction (
    id int not null identity(1,1) primary key, 
    transaction_id int not null,
    imsi varchar(9) not null,
    subscriber_id int,
    tac varchar(8) not null,
    snr varchar(8) not null,        
    imei varchar(14) not null,
    cell int not null,
    lac int not null,
    event_type varchar(50) null,    
    event_ts datetime not null
);
go

drop table if exists dbo.error_destination_output;
go

create table dbo.error_destination_output (
    id varchar(50),
    transaction_id varchar(50),
    subscriber_id varchar(50),
    imsi varchar(50),
    imei varchar(50),
    cell varchar(50),
    lac varchar(50),
    event_type varchar(50),
    event_ts varchar(50),
    tac varchar(50),
    snr varchar(50),
    ErrorCode int,
    ErrorColumn int
);
go
go


create table dbo.err_source_output (
    id int identity(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int,
    audit_id int
);
go

select * from dbo.fact_transaction;
select * from dbo.error_destination_output;
select * from dbo.err_source_output;


















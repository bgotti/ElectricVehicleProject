# Développement des applications

# Instruction

1. Connect to HR Oracle database.

2. Create a customers table: create table customers( id varchar2(5) NOT NULL, name varchar2(20) NOT NULL, address varchar2(20) NOT NULL, email varchar2(20) NOT NULL, CONSTRAINT customers_pk PRIMARY KEY( ID ) ENABLE);

3. Test insert CRUD:

insert into customers(id,name,address,email) values(1,'Samuel Smith','12 Main Avenue','samuelemail.com'); insert into customers(id,name,address,email) values(2,'Susan Concord','11 Steve Blvd','susanemail.com');

commit;


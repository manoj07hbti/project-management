CREATE SEQUENCE IF NOT EXISTS employee_seq;

CREATE TABLE IF NOT EXISTS employee (

employee_id BIGINT NOT NULL DEFAULT nextval('employee_seq') PRIMARY KEY,
email VARCHAR(100) NOT NULL,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL

);

CREATE SEQUENCE IF NOT EXISTS project_seq;

CREATE TABLE public.project
(
    project_id bigint NOT NULL DEFAULT nextval('project_seq'::regclass),
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    stage character varying(100) COLLATE pg_catalog."default" NOT NULL,
    description character varying(500) COLLATE pg_catalog."default" NOT NULL,
    start_date date,
    end_date date,
    CONSTRAINT project_pkey PRIMARY KEY (project_id)
)


CREATE TABLE IF NOT EXISTS project_employee (

project_id BIGINT REFERENCES project, 
employee_id BIGINT REFERENCES employee

);
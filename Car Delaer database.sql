CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "cutomer_type" VARCHAR(100),
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "email" VARCHAR(100),
  "sales_invoice" INTEGER,
  "service_invoice" INTEGER,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "parts_inventory" (
  "parts_inventory_id" SERIAL,
  "parts_id" INTEGER,
  "parts_name" VARCHAR(100),
  PRIMARY KEY ("parts_inventory_id")
);

CREATE TABLE "car_sales" (
  "sales_invoice" SERIAL,
  "staff_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "date_of_sale" DATE DEFAULT CURRENT_DATE,
  "phone_number" NUMERIC(15),
  PRIMARY KEY ("sales_invoice")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "car_make" VARCHAR(100),
  "car_model" VARCHAR(100),
  "car_year" INTEGER,
  "car_color" VARCHAR(100),
  PRIMARY KEY ("car_id")
);

CREATE TABLE "service_sales" (
  "service_invoice" INTEGER,
  "staff_id" SERIAL,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "parts_inventory_id" INTEGER,
  "service_type" VARCHAR(100),
  PRIMARY KEY ("service_invoice")
);

CREATE TABLE "staff" (
  "staff_id" SERIAL,
  "customer_id" INTEGER,
  "first_name" INTEGER,
  "last_name" INTEGER,
  "role" VARCHAR(100),
  PRIMARY KEY ("staff_id")
);

CREATE TABLE "car_inventory" (
  "car_inventory_id" SERIAL,
  "car_id" INTEGER,
  PRIMARY KEY ("car_inventory_id")
);



-- Drop schema named "public"
DROP SCHEMA "public" CASCADE;
-- Add new schema named "app"
CREATE SCHEMA "app";
-- Create "users" table
CREATE TABLE "app"."users" (
  "id" integer NOT NULL,
  "user_name" character varying(255) NOT NULL,
  "email" character varying(255) NOT NULL,
  PRIMARY KEY ("id")
);
-- Create "posts" table
CREATE TABLE "app"."posts" (
  "id" integer NOT NULL,
  "user_id" integer NOT NULL,
  "title" character varying(255) NOT NULL,
  "body" text NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "post_author" FOREIGN KEY ("user_id") REFERENCES "app"."users" ("id") ON UPDATE NO ACTION ON DELETE CASCADE
);

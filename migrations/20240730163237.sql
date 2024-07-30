-- Drop schema named "public"
DROP SCHEMA "public" CASCADE;
-- Add new schema named "app"
CREATE SCHEMA "app";
-- Create "users" table
CREATE TABLE "app"."users" ("id" integer NOT NULL, "user_name" text NOT NULL, "email" text NOT NULL, PRIMARY KEY ("id"), CONSTRAINT "users_email_key" UNIQUE ("email"));
-- Create "posts" table
CREATE TABLE "app"."posts" ("id" integer NOT NULL, "user_id" integer NOT NULL, "title" character varying(255) NOT NULL, "body" text NOT NULL, PRIMARY KEY ("id"), CONSTRAINT "post_author" FOREIGN KEY ("user_id") REFERENCES "app"."users" ("id") ON UPDATE NO ACTION ON DELETE CASCADE);
-- Create index "posts_user_id_key" to table: "posts"
CREATE INDEX "posts_user_id_key" ON "app"."posts" ("user_id");

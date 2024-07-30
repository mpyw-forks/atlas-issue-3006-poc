-- Rename an index from "posts_user_id_key" to "posts_user_id_idx"
ALTER INDEX "posts_user_id_key" RENAME TO "posts_user_id_idx";
-- Modify "users" table
ALTER TABLE "app"."users" DROP CONSTRAINT "users_email_key";
-- Create index "users_email_idx" to table: "users"
CREATE INDEX "users_email_idx" ON "app"."users" ("email");

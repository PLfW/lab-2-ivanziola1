CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
;
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
;
CREATE TABLE "books" ("id"  INTEGER PRIMARY KEY  NOT NULL, "title" varchar, "author" varchar, "description" text, "amazon_id" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "rating" integer, "keywords" text, "approved" boolean);

CREATE TABLE "genres" ("id"  INTEGER PRIMARY KEY  NOT NULL, "name" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE TABLE "book_genres" ("id"  INTEGER PRIMARY KEY  NOT NULL, "book_id" integer, "genre_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE INDEX "index_book_genres_on_book_id" ON "book_genres" ("book_id");
CREATE INDEX "index_book_genres_on_genre_id" ON "book_genres" ("genre_id");
CREATE TABLE "users" ("id"  INTEGER PRIMARY KEY  NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "role" varchar);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");

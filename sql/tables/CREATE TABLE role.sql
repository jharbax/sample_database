
CREATE TABLE IF NOT EXISTS "sample_docker".public."role" 
(
	"id" INTEGER PRIMARY KEY,
	"name" VARCHAR(16) NOT NULL,
	CONSTRAINT "role_name_unique" UNIQUE ("name")
);

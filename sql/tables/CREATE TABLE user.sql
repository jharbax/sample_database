
CREATE TABLE IF NOT EXISTS "sample_docker".public."user"
(
	"id" SERIAL PRIMARY KEY,
	"role_id" INTEGER NOT NULL,
	"name" VARCHAR(50) NOT NULL,
	"login" VARCHAR(16) NOT NULL,
	"hash" VARCHAR(60) NOT NULL,
	"created" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"last_update" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT "login_unique" UNIQUE ("login"),
	CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "sample_docker".public."role"("id")
);


CREATE TABLE IF NOT EXISTS "sample_docker".public."account"
(
	"id" SERIAL PRIMARY KEY,
	"user_client_id" INTEGER NOT NULL,
	"user_manager_id" INTEGER NOT NULL,
	"balance" NUMERIC(12, 2) NOT NULL DEFAULT 0,
	"locked_value" NUMERIC(12, 2) NOT NULL DEFAULT 0,
	"created" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"last_update" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT "fk_client" FOREIGN KEY ("user_client_id") REFERENCES "sample_docker".public."user"("id"),
	CONSTRAINT "fk_manager" FOREIGN KEY ("user_manager_id") REFERENCES "sample_docker".public."user"("id")
);

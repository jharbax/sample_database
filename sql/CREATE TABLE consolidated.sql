
-- TABLE role
CREATE TABLE IF NOT EXISTS "sample_docker".public."role" 
(
	"id" INTEGER PRIMARY KEY,
	"name" VARCHAR(16) NOT NULL,
	CONSTRAINT "role_name_unique" UNIQUE ("name")
);

-- TABLE bank_operation
CREATE TABLE IF NOT EXISTS "sample_docker".public."bank_operation" 
(
	"id" INTEGER PRIMARY KEY,
	"name" VARCHAR(20) NOT NULL,
	CONSTRAINT "bank_operation_name_unique" UNIQUE ("name")
);

-- TABLE user
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

-- TABLE account
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

-- TABLE bank_statement
CREATE TABLE IF NOT EXISTS "sample_docker".public."bank_statement"
(
	"id" SERIAL PRIMARY KEY,
	"account_id" INTEGER NOT NULL,
    "withdrawal_account" INTEGER NULL,
    "operation_id" INTEGER NOT NULL,
    "value" NUMERIC(12, 2) NOT NULL,
	"balance_before" NUMERIC(12, 2) NOT NULL,
    "balance_after" NUMERIC(12, 2) NOT NULL,
	"dt_operation" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT "fk_account" FOREIGN KEY ("account_id") REFERENCES "sample_docker".public."account"("id"),
    CONSTRAINT "fk_withdrawal_account" FOREIGN KEY ("withdrawal_account") REFERENCES "sample_docker".public."account"("id"),
	CONSTRAINT "fk_operation" FOREIGN KEY ("operation_id") REFERENCES "sample_docker".public."bank_operation"("id")
);

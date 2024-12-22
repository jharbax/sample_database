
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


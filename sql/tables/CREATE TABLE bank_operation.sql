
-- TABLE bank_operation
CREATE TABLE IF NOT EXISTS "sample_docker".public."bank_operation" 
(
	"id" INTEGER PRIMARY KEY,
	"name" VARCHAR(20) NOT NULL,
	CONSTRAINT "bank_operation_name_unique" UNIQUE ("name")
);

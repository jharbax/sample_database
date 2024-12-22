
SELECT
	"id" AS "Id",
	"user_client_id" AS "ClientId",
	"user_manager_id" AS "ManagerId",
	"balance" AS "Balance",
	"locked_value" AS "Locked",
	"created" AS "Created",
	"last_update" AS "LastUpdate"
FROM "sample_docker".public."account"

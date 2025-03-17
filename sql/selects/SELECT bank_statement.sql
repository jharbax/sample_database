
SELECT
	"bs"."id" AS "Id",
	"bs"."account_id" AS "AccountId",
	"bs"."withdrawal_account" AS "WithdrawalAccount",
	"bs"."target_account" AS "TargetAccount",
	"bs"."operation_id" AS "OperationId",
	"bs"."value" AS "Value",
	"bs"."balance_before" AS "BalanceBefore",
	"bs"."balance_after" AS "BalanceAfter",
	"bs"."dt_operation" AS "DtOperation"
FROM "sample_docker".public."bank_statement" AS "bs"

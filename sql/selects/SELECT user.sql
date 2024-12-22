
SELECT
	"u"."id" AS "Id",
	"u"."role_id" AS "RoleId",
	"r"."name" AS "RoleName",
	"u"."name" AS "Name", 
	"u"."login" AS "Login", 
	"u"."hash" AS "Hash", 
	"u"."created" AS "Created", 
	"u"."last_update" AS "LastUpdate" 
FROM "sample_docker".public."user" AS "u"
INNER JOIN "sample_docker".public."role" AS "r" ON ("u"."role_id" = "r"."id");

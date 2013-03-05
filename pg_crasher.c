#include "postgres.h"
#include "fmgr.h"

extern Datum pg_crasher(PG_FUNCTION_ARGS);

PG_MODULE_MAGIC;
PG_FUNCTION_INFO_V1(pg_crasher);

Datum pg_crasher(PG_FUNCTION_ARGS)
{
	char *crash = 0;
	*crash = 'a';
	PG_RETURN_INT32(0);
}

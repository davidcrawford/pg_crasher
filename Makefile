# pg_crasher/Makefile

MODULE_big = pg_crasher

PG_CPPFLAGS = --std=c99
OBJS = pg_crasher.o

EXTENSION = pg_crasher
DATA = pg_crasher--1.0.sql

#
# Users need to specify their Postgres installation path through pg_config. For
# example: /usr/local/pgsql/bin/pg_config or /usr/lib/postgresql/9.1/bin/pg_config
#

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

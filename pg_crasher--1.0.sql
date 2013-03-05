/* contrib/pg_crasher/pg_crasher--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pg_crasher" to load this file. \quit

CREATE FUNCTION pg_crasher()
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

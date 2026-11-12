-- Like our CNPG clusters: `postgres` is the bootstrap superuser (it owns the system catalogs),
-- and the tests connect as a separate superuser.
CREATE ROLE test_user WITH LOGIN SUPERUSER PASSWORD 'test_password';
-- CNPG disables superuser access by default, so `postgres` has no password.
ALTER ROLE postgres WITH PASSWORD NULL;

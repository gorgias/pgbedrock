# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project tries to adhere to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]
_this space intentionally left blank_


## [0.7.0.3] - 2026-11-12
### Security
- Jinja2 3.1.6 (3 sandbox breakout advisories).

### Added
- `configure --keep-unspecified-passwords` (off by default): a role whose spec has no `PASSWORD`
  keeps its current password instead of having it removed, so passwords can be managed outside
  the spec.

### Fixed
- Test fixtures document and keep the built-in `pg_*` roles of the server under test, so the
  database tests run on Postgres versions newer than 10.

### Changed
- Python 3.12 (3.7 is end of life): `python:3.12` images, `python_requires>=3.12`, and current
  dependencies: Cerberus 1.3.5, click 8.1.8, Jinja2 3.1.6, MarkupSafe 3.0.2, psycopg2 2.9.10,
  PyYAML 6.0.2; pytest 9.0.3, pytest-cov 6.1.1, wheel 0.46.2. The Cython workaround for PyYAML is
  gone.
- `distutils.util.strtobool` (removed in Python 3.12) replaced by a local `strtobool`.
- `psycopg2.tz` (removed in psycopg2 2.9) replaced by `datetime.timezone.utc` in
  `is_valid_forever`.
- Cerberus rule `valueschema` renamed to `valuesrules` (the old name is deprecated).
- Invalid escape sequences (`\_`, `\-`) fixed; the resulting strings are unchanged.
- Tests run against Postgres 14 with the CloudNativePG image by default (`POSTGRES_IMAGE`,
  `POSTGRES_PLATFORM`). The test database mirrors CNPG: `postgres` is the bootstrap superuser
  without a password, `test_user` a separate superuser. Expectations that depended on Postgres
  10 (built-in roles and memberships, md5 password hashes) now come from the server.


## [0.7.0] - 2023-11-14

### In Code

- Don't give the TRUNCATE permission as part as the `write` role (@jordanp)

## [0.6.0] - 2023-01-23

### In Code

- Add initial support for Google Cloud SQL (@johanfleury)

## [0.5.0] - 2022-09-30

### In Code

- BREAKING CHANGE: Add support for setting per-role config with ALTER ROLE SET (@johanfleury)
pgbedrock will now remove any existing config that’s not defined in its configuration.

## [0.4.4] - 2022-09-06

### In Code
- Remove Python 2 support (@johanfleury)
- Add support for SCRAM-SHA-256 passwords (passwords can now be passed plain text or hashed) (@johanfleury)

## [0.4.3] - 2022-09-01

### In Code
- fix Q_GET_ALL_RAW_OBJECT_ATTRIBUTES in context.py to also recognize partitioned tables (@FlipEnergy)

## [0.4.2] - 2019-12-13
### In Code
- Fixes for new "except" feature introduced in 0.4.0 ( @jholbrook-sqsp )
- Upgrade PyYAML from 5.1 to 5.2 in requirements.txt ( @dependabot )
- Patch to remove YAML.load warnings ( @jholbrook-sqsp )

## [0.4.1] - 2019-12-10
### In Code
- Small fix to ensure docker container deploys with working code. ( @domoore1989 )

## [0.4.0] - 2019-12-10
### In Code
- Added the ability to except tables and sequences from privileges when the schemas entire tables
  or sequences are whitelisted ( @dmoore1989 )

## [0.3.2] - 2018-08-30
### In Code
- `pgbedrock` is more permissive in its declared dependencies so it plays well
  with other packages in the same python environment ( @emddudley )
### In Docs
- Added a changelog
- Added a contributor credits file
- Added some rules about keeping them up to date.

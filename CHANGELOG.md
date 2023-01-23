# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project tries to adhere to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]
_this space intentionally left blank_

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

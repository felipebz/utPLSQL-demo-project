[![Deploy and test](https://github.com/felipebz/utPLSQL-demo-project/actions/workflows/build.yml/badge.svg)](https://github.com/felipebz/utPLSQL-demo-project/actions/workflows/build.yml)
[![Quality Gate Status](https://sonarqube.felipezorzo.com.br/api/project_badges/measure?project=utPLSQL-demo-project&metric=alert_status)](https://sonarqube.felipezorzo.com.br/dashboard?id=utPLSQL-demo-project)

# CI/CD and Unit Testing for Oracle PLSQL

This is a demo project using [utPLSQL v3](https://github.com/utPLSQL/utPLSQL) for unit testing of Oracle PL/SQL code.

The project is also taking benefit of Continuous Integration with GitHub Actions as well as static code analysis, code coverage and test results reporting using SonarQube + [ZPA](https://felipezorzo.com.br/zpa).

With every commit made to the github repository, a build job is executed using [GitHub Actions](https://github.com/felipebz/utPLSQL-demo-project/actions).

The build process consists of following steps:
- Download Oracle Database 21c XE
- Download [latest release of utPLSQL](https://github.com/utPLSQL/utPLSQL/releases/latest)
- Install Oracle Database
- Install [utPLSQL](https://github.com/utPLSQL/utPLSQL) framework
- Install [project sources](source/install.sh)
- Install [unit tests](test/install.sh)
- Download and unzip the [utplsql-cli](https://github.com/utPLSQL/utPLSQL-cli) project binaries
- [Execute all tests](test/run.sh) on the project
- Publish [test results](https://sonarqube.felipezorzo.com.br/component_measures?metric=tests&id=utPLSQL-demo-project) and [code coverage](https://sonarqube.felipezorzo.com.br/component_measures?metric=coverage&id=utPLSQL-demo-project) to the [SonarQube + ZPA demo instance](https://sonarqube.felipezorzo.com.br/) instance

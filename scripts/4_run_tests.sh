#!/bin/bash

set -ev

utPLSQL-cli/bin/utplsql run ut3_demo/ut3_demo@//127.0.0.1:1521/XE?oracle.net.disableOob=true \
  -f=ut_documentation_reporter  -c \
  -f=ut_coverage_sonar_reporter     -o=coverage.xml \
  -f=ut_sonar_test_reporter         -o=test_results.xml \
  --failure-exit-code=0
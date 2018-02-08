#!/usr/bin/env bash
set -e; set -u;
bin/console doctrine:schema:drop --force
bin/console doctrine:schema:create

bin/console app:import-old --env=prod
bin/console cache:clear --no-warmup

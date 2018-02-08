#!/usr/bin/env bash
set -e; set -u;
bin/console doctrine:schema:drop --force
bin/console doctrine:schema:create

echo "Removing images done."
echo "Populating fixtures (takes a lot of time ~ 5 mins)"
bin/console hautelook:fixtures:load --purge-with-truncate --no-interaction
bin/console cache:clear --no-warmup
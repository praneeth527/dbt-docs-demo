#!/bin/bash

cd projects
# iterate over each sub folder in the projects directory
for folder in */; do
    echo "$folder"
    # navigate into the sub folder
    cd "$folder"

    # run the dbt package installation command
    dbt deps --vars '{run_id: install_packages}'
    dbt compile --target "$DBT_TARGET"
    dbt docs generate --target "$DBT_TARGET"

    # navigate back to the projects directory
    cd -

    mkdir -p docs/"$folder"

    cp "$folder"target/*.json "$folder"target/*.html "$folder"target/graph.gpickle docs/"$folder"

done

cd ../
rm -rf projects/docs
mv projects/docs .
sh generate_index.sh

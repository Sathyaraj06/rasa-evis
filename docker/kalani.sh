#!/bin/bash
org=${1}

echo $org;

# if [ "$org" == "kalani" ]; then
#         rasa train --data data/base/nlu.yml data/hexaware/nlu.yml data/base/rules.yml data/hexaware/rules.yml data/base/stories.yml data/hexaware/stories.yml -d data/base/domain.yml data/hexaware/domain.yml --config data/hexaware/config.yml --out models --fixed-model-name model
# fi
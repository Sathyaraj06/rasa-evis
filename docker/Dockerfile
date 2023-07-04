# WROKING
# from rasa base image
FROM rasa/rasa:latest-full
# copy all source and the Rasa generated model

COPY ./src/ /app

# inform which port will run on
EXPOSE 5005

USER root

ARG org


ENTRYPOINT []


RUN $org



# RUN echo "$org";

# RUN if [ "$org" == "base" ]; then \
#       rasa train --data data/base/nlu.yml data/hexaware/nlu.yml data/base/rules.yml data/hexaware/rules.yml data/base/stories.yml data/hexaware/stories.yml -d data/base/domain.yml data/hexaware/domain.yml --config data/hexaware/config.yml --out models --fixed-model-name model; \
#     fi

# RUN if [ "$org" == "hexaware" ]; then \
#       rasa train --data data/chitchat/nlu.yml data/hexaware/nlu.yml data/chitchat/rules.yml data/hexaware/rules.yml data/chitchat/stories.yml data/hexaware/stories.yml -d data/hexaware/domain --config data/hexaware/config.yml; \
#     fi

# RUN if [ "$org" == "kalani" ]; then \
#       rasa train --data data/kalani/nlu.yml data/kalani/rules.yml data/kalani/stories.yml -d data/kalani/domain.yml --config data/kalani/config.yml; \
#     fi

# RUN if [ "$org" == "gunjan" ]; then \
#       rasa train --data data/gunjan/nlu.yml data/gunjan/rules.yml data/gunjan/stories.yml -d data/gunjan/domain.yml --config data/gunjan/config.yml; \
#     fi



# RUN if [ "${org}" == "base" ]; then \
#       RUN rasa train --data data/base/nlu.yml data/hexaware/nlu.yml data/base/rules.yml data/hexaware/rules.yml data/base/stories.yml data/hexaware/stories.yml -d data/base/domain.yml data/hexaware/domain.yml --config data/hexaware/config.yml --out models --fixed-model-name model; \
#     elif [ "${org}" == "hexaware" ]; then \
#       RUN rasa train --data data/chitchat/nlu.yml data/hexaware/nlu.yml data/chitchat/rules.yml data/hexaware/rules.yml data/chitchat/stories.yml data/hexaware/stories.yml -d data/hexaware/domain --config data/hexaware/config.yml; \
#     elif [ "${org}" == "kalani" ]; then \
#       RUN rasa train --data data/kalani/nlu.yml data/kalani/rules.yml data/kalani/stories.yml -d data/kalani/domain.yml --config data/kalani/config.yml; \
#     elif [ "${org}" == "gunjan" ]; then \
#       RUN rasa train --data data/gunjan/nlu.yml data/gunjan/rules.yml data/gunjan/stories.yml -d data/gunjan/domain.yml --config data/gunjan/config.yml; \
#     if








# WORKING

# RUN rasa train --data data/gunjan/nlu.yml data/gunjan/rules.yml data/gunjan/stories.yml -d data/gunjan/domain.yml --config data/gunjan/config.yml

# RUN rasa train --data data/chitchat/nlu.yml data/hexaware/nlu.yml data/chitchat/rules.yml data/hexaware/rules.yml data/chitchat/stories.yml data/hexaware/stories.yml -d data/hexaware/domain --config data/hexaware/config.yml --out models --fixed-model-name hexaware-model

# RUN rasa train --data data/base/nlu.yml data/hexaware/nlu.yml data/base/rules.yml data/hexaware/rules.yml data/base/stories.yml data/hexaware/stories.yml -d data/base/domain.yml data/hexaware/domain.yml --config data/hexaware/config.yml --out models --fixed-model-name base-model

# ENV shell_mode false

# RUN - executed when image is builded and added to image part (seated to image)

# RUN rasa train --data data/default/nlu.yml data/default/stories.yml data/default/rules.yml -d data/default/domain.yml --out models --fixed-model-name default-model
# RUN rasa train --data data/hexaware/nlu.yml data/hexaware/stories.yml -d data/hexaware/domain.yml --out models --fixed-model-name hexaware-model
# RUN rasa train --data data/organization/nlu.yml data/organization/stories.yml -d data/organization/domain.yml --out models --fixed-model-name organization-model

# # launch script (rasa shell or rasa run)
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -p 5006 --cors "*"; else rasa shell -p 5006; fi'
# --auth-token 0123456789

# rasa run --enable-api -m models/<model-a>.tar.gz --port 12345
# rasa run --enable-api -m models/<model-b>.tar.gz --port 12346

# CMD - executed only when image is launched as container - when we use docker run below command will be overwritten

# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -m models/models_chitchat.tar.gz -p 5005 --enable-api  --log-file rasa.log --debug --cors "*"; else rasa shell -p 5005; fi'
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -m models/models_organization.tar.gz -p 5006 --enable-api  --log-file rasa.log --debug --cors "*"; else rasa shell -p 5006; fi'


# RUN rasa train --data data/chitchat/nlu.yml data/chitchat/stories.yml -d data/chitchat/domain.yml --out models/models_chitchat
# # RUN rasa train

# # launch script (rasa shell or rasa run)
# # rasa shell -m models/model1.tar.gz
# # --auth-token 0123456789
# # --model models/model-1.tar.gz
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run --model models/models_chitchat.tar.gz --log-file rasa.log --endpoints endpoints.yml --debug --enable-api -p 5005 --cors "*"; else rasa shell -p 5005; fi'

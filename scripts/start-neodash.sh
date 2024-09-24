docker build -t neodash:v1 .
docker run -it --rm -p 5005:5005 \
    -e ssoEnabled=false \
    -e standalone=true \
    -e standaloneProtocol="neo4j" \
    -e standaloneHost="10.53.206.177" \
    -e standalonePort="7687" \
    -e standaloneDatabase="neo4j" \
    -e standaloneDashboardName="Production View Dashboard" \
    -e standaloneDashboardDatabase="neo4j" \
    -e standaloneAllowLoad=true \
    -e standaloneLoadFromOtherDatabases=true \
    -e standaloneMultiDatabase=false \
    -d \
    neodash:v1

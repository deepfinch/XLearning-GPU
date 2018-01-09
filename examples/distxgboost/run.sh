$XLEARNING_HOME/bin/xl-submit \
   --app-type "distxgboost" \
   --worker-memory 20G \
   --worker-num 2 \
   --files  mushroom.yarn.conf,demo.sh\
   --cacheArchive /tmp/data/distxgboost/xgboost.tgz#xgboost \
   --launch-cmd "sh demo.sh" \
   --input /tmp/data/distxgboost/train#train \
   --input /tmp/data/distxgboost/test#test \
   --output /tmp/xgboost_dist_output#model \
   --app-name "distxgboost_demo" \
   --queue default \

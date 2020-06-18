sed -i 's/TWITTER_ACCESS_TOKEN/'"$TWITTER_ACCESS_TOKEN"'/g' /opt/tootgo/conf.json
sed -i 's/TWITTER_API_KEY/'"$TWITTER_API_KEY"'/g' /opt/tootgo/conf.json
sed -i 's/SUBREDDIT_TO_MIRROR/'"$SUBREDDIT_TO_MIRROR"'/g' /opt/tootgo/conf.json
sed -i 's/REDDIT_USERNAME/'"$REDDIT_USERNAME"'/g' /opt/tootgo/conf.json
sed -i 's/REDDIT_PASSWORD/'"$REDDIT_PASSWORD"'/g' /opt/tootgo/conf.json

cp /opt/tootgo/tootgo /usr/local/go/src/tootgo

./tootgo

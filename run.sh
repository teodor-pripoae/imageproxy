exec /imageproxy -addr 0.0.0.0:8080 -log_dir /var/log/imageproxy -cacheDir /var/cache/imageproxy -cacheSize $CACHE_SIZE -secret $SECRET_TOKEN

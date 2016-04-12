all:
	bundle exec jekyll build --config=_config.yml

production:
	bundle exec jekyll build --config=_config.yml
	s3_website push
	echo "Done"

# Will show you what files change on production, but not actually make them.
dry-run:
	bundle exec jekyll build --config=_config.yml
	s3_website push --dry-run
	echo "Done"

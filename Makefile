test:
	bundle exec ruby flip_flap_spec.rb

flog:
	bundle exec flog flip_flap.rb -d
	bundle exec flog tsv_buddy.rb -d
	bundle exec flog yaml_buddy.rb -d

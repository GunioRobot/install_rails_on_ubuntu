
# RAILS and controller related
gems = %w( rails inherited_resources devise authlogic rake  will_paginate )

# Database related
gems+= %w( mysql sqlite3-ruby pg postgres )

# Test
gems+= %w( crack curb culerity httparty rack rack-test rails-footnotes test-unit)
gems+= %w( capybara ZenTest rspec rspec-rails gherkin cucumber cucumber-rails database_cleaner )

# Deploy
gems+= %w( chef-deploy heroku capistrano capistrano-ext )

# Various
gems+= %w( hpricot haml handsoap hirb metric_fu mime-types nokogiri rcov selenium-webdriver)
gems+= %w( acts-as-taggable-on acts_as_list acts_as_versioned acts-as-taggable-on )
gems+= %w( paperclip rmagick rack fastercsv RedCloth libxml-ruby )
gems+= %w( acts_as_list acts_as_versioned )

# Reports
gems+= %w( prawn prawn-core prawn-layout prawn-security xml-simple )

# Non mandatory
gems+= %w( paypal_adaptive rvm scrapi subdomain-fu term-ansicolor )
gems+= %w( twitter twitterland formatted_date )


# Install them all
gems.each { |gem| `gem install --no-ri --no-rdoc #{gem}` }


# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'


#sites/index
#CSS
Rails.application.config.assets.precompile += %w( index.css )


#index
#JS
Rails.application.config.assets.precompile += %w( numScroller.js )







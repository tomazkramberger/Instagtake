# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( instagtake.js )
Rails.application.config.assets.precompile += %w( theme/style.css )
Rails.application.config.assets.precompile += %w( theme/style-responsive.css )
Rails.application.config.assets.precompile += %w( theme/bootstrap.css )
Rails.application.config.assets.precompile += %w( jquery.backstretch.min.js )
Rails.application.config.assets.precompile += %w( jquery.capty.css )
Rails.application.config.assets.precompile += %w( jquery.capty.js )
Rails.application.config.assets.precompile += %w( jquery.caption.min.js )
Rails.application.config.assets.precompile += %w( captionjs.css )
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf )


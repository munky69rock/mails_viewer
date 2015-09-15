require 'mails_viewer'
require 'rails'

module MailsViewer
  class Engine < Rails::Engine
    engine_name = :mails_viewer
    isolate_namespace MailsViewer

    # Enabling assets precompiling under rails 4.0
    if Rails.version >= '4.0' && !Rails.env.production?
      require 'jquery-datatables-rails'
      initializer "MailsViewer precompile hook", :group => :all do |app|
        app.config.assets.precompile += %w(mails_viewer.js mails_viewer.css)
      end
    end
  end
end

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MavenInterviews
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.after_initialize do
      ifaddr = Socket.getifaddrs.find{ |a| a.name =~ /\Aen/ and a.addr.ipv4? }
      if ifaddr.present?
        puts
        puts "IP Address: #{ifaddr.addr.ip_address}"
        puts "Available at: http://#{ifaddr.addr.ip_address}.nip.io:3000/"
        puts
      end
    end
  end
end

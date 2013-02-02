require 'net/smtp'
require 'yaml'

class EmailNotifier
  def send_email(to,opts={})
    opts[:body] ||= "Messages should go here!!!"
    p config

    msg = <<END_OF_MESSAGE
From: #{config['from_alias']} <#{config['from']}>
To: <#{to}>
Subject: Ihackernews homepage news with score above the median

#{opts[:body]}
END_OF_MESSAGE

    smtp = Net::SMTP.new(config['server'], config['port'])
    smtp.enable_starttls
    smtp.start(config['domain'], config['user'], config['password'], config['auth_type'].to_sym) do |s|
      s.send_message msg, config['from'], to
    end

  end
  private
  def config
    @config ||= YAML.load_file('config/smtp.yml')
  end
end

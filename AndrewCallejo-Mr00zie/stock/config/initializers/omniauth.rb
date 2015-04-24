Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  provider :twitter, ENV['OcZTRZO0qXjr97LS4YiE0m4OE'], ENV['HQNyKqzJOGaAFQWrz0lJzw7qTLXrEfVt8vSiVhbLgQLP2Y5o1y']
end
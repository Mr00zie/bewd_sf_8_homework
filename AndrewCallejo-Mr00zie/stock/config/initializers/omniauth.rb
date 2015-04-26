Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  provider :twitter, 'OcZTRZO0qXjr97LS4YiE0m4OE', 'HQNyKqzJOGaAFQWrz0lJzw7qTLXrEfVt8vSiVhbLgQLP2Y5o1y'
  {
  	  :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
        :force_login => 'true',
        :lang => 'pt'
      }
  }

end
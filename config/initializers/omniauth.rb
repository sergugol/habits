Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, APP_CONFIG[Rails.env]['facebook']['key'], APP_CONFIG[Rails.env]['facebook']['secret']
end
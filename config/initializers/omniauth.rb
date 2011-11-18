Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, APP_CONFIG[Rails.env]['twitter']['key'], APP_CONFIG[Rails.env]['twitter']['secret']
  provider :facebook, APP_CONFIG[Rails.env]['facebook']['key'], APP_CONFIG[Rails.env]['facebook']['secret']
end
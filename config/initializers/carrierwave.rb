CarrierWave.configure do |config|
  config.fog_credentials = {
    # Configuration for Amazon S3
    :provider              => 'AWS',
    :aws_access_key_id     => ENV["AWS_ACCESS_KEY"],
    :aws_secret_access_key => ENV["AWS_SECRET_KEY"],
  }

  config.storage = :fog
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory  = ENV['S3_BUCKET_NAME']
  config.fog_public     = false
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end

if Rails.env.production?
  require 'refile/s3'
  aws = {
    access_key_id: ENV['AWS_ACCESS_KEY'],
    secret_access_key: ENV['AWS_SECRET_KEY'],
    region: ENV['AWS_REGION'],
    bucket: ENV['S3_BUCKET']
  }

  Refile.cache = Refile::S3.new(max_size: 10.megabytes, prefix: "cache", **aws)
  Refile.store = Refile::S3.new(prefix: "store", **aws)

end

# DeviseTokenAuth.setup do |config|
#   config.token_cost = Rails.env.test? ? 4 : 10
# end

DeviseTokenAuth.setup do |config|
  config.change_headers_on_each_request = true
  config.token_lifespan = 2.weeks
  config.batch_request_buffer_throttle = 5.seconds
  config.default_confirm_success_url = "/"
  config.default_password_reset_url = "/password/reset"
end

require 'json'

Handler = Proc.new do |req, res|
  res.status = 200
  res['Content-Type'] = 'application/json; charset=utf-8'
  res.body = { now: Time.now }.to_json
end

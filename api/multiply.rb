require 'json'

Handler = Proc.new do |req, res|
  body = JSON.parse(req.body)
  res.status = 200
  res['Content-Type'] = 'application/json; charset=utf-8'
  res.body = { result: body['x'] * body['y'] }.to_json
end

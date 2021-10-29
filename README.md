# vercel-functions-ruby-test

Ruby Serverless functions are still in Alpha at Vercel and we can't test it locally
with the Vercel-CLI.

This repo provide a script and examples to test locally your serverless functions.

## Installation

1. Copy the `server.rb` file into your root directory of your project.
2. Run `ruby server.rb`
3. Test your function to `http://localhost:8000/api/{{function-name}}`

## Examples

### `GET api/now`

[./api/now.rb](https://github.com/Bhacaz/vercel-functions-ruby-test/blob/main/api/now.rb)

```shell
curl http://localhost:8000/api/now
```

### `POST api/multiply`

[./api/multiply.rb](https://github.com/Bhacaz/vercel-functions-ruby-test/blob/main/api/multiply.rb)

```shell
curl -X POST 'http://localhost:8000/api/multiply' -H 'Content-Type: application/json' -d '{ "x": 2, "y": 4 }'
```

## Limitations

You must restart your server when you change your `api` files.

## Thanks

Thanks for the inspiration https://github.com/gior/vercel-dev-ruby/


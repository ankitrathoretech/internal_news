# README

This is news article platform where we can read news articles.

For using this application follow below steps

1. Take pull of the code.
2. Open your terminal and navigate to project directory /internal-news
3. Run following commands
`bundle`
4. Setup config/database.yml file by your username and password in default block.
example:
  `
default: &default
  adapter: postgresql
  encoding: unicode
  username: postgres
  password: postgres

development:
  <<: *default
  database: internal_news_development

test:
  <<: *default
  database: internal_news_test

production:
  <<: *default
  database: internal_news_production
`

5. Run in your terminal `rails db:setup`
6. Run in your terminal `rails s` to start server
7. goto localhost:3000/admin and login with credentials
  email: 'admin@example.com', password: 'Admin@#7%9'
8. Create some articles from there.
9. Now logout from admin panel and navigate to localhost:3000, create a user account from there.
10. Now you can see your created news articles on dashboard. 

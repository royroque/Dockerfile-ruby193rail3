# Dockerfile-ruby193rail3
Dockerfile with ruby 193 + rails 3.2.21

This is a dockerfile with:
 -base:  dockerfile/ubuntu
 -ruby193
 -rails 3.2.21
 -wash_out
 -sample app: 'blog'

Once started, sample app serves the following: 
 http://localhost:3000/posts (scaffold renders html)
 http://localhost:3000/posts.json
 http://localhost:3000/books.xml (pre-populated with see db:seed)
 http://localhost:3000/rumbas/wsdl (pre-populated with db:seed)

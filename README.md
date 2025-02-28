## Sparta Node Sample App

## Description

<<<<<<< HEAD
This app is intended for use with the Sparta Global Devops Stream as a sample app. You can clone the repo and use it as is but no changes will be accepted on this branch.
=======
This app is intended for use with the Sparta Global Devops Stream as a sample app. You can clone the repo and use it as is but no changes will be accepted on this branch. 
>>>>>>> b30c23b (pushing test code)

The app is a Node JS app with three pages.

### Homepage
<<<<<<< HEAD

- `192.168.10.100:3000`
  `localhost:3000`
=======
- `192.168.10.100:3000`
``localhost:3000``
>>>>>>> b30c23b (pushing test code)

Displays a simple homepage displaying a Sparta logo and message. This page should return a 200 response.

### Blog

<<<<<<< HEAD
`localhost:3000/posts`
=======
``localhost:3000/posts``
>>>>>>> b30c23b (pushing test code)

This page displays a logo and 100 randomly generated blog posts. The posts are generated during the seeding step.

This page and the seeding is only accessible when a database is available and the DB_HOST environment variable has been set with it's location.

### A fibonacci number generator

<<<<<<< HEAD
`localhost:3000/fibonacci/{index}`
=======
``localhost:3000/fibonacci/{index}``
>>>>>>> b30c23b (pushing test code)

This page has be implemented poorly on purpose to produce a slow running function. This can be used for performance testing and crash recovery testing.

The higher the fibonacci number requested the longer the request will take. A very large number can crash or block the process.

<<<<<<< HEAD
### Hackable code

`localhost:3000/hack/{code}`
=======

### Hackable code

``localhost:3000/hack/{code}``
>>>>>>> b30c23b (pushing test code)

There is a commented route that opens a serious security vulnerability. This should only be enabled when looking at user security and then disabled immediately afterwards

## Usage

Clone the app

```
npm install
npm start
```

You can then access the app on port 3000 at one of the urls given above.

## Tests

There is a basic test framework available that uses the Mocha/Chai framework

```
npm test
```

The test for posts will fail ( as expected ) if the database has not been correctly setup.

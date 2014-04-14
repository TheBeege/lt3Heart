lt3Heart
========

This is my repo to mess around with the lessthan3 dev tools

# Getting Things Running #

## User Config File ##

lt3 creates a file ~/.lt3\_config. You'll want to edit this guy, otherwise lt3 will break when attempting to init, and you'll pull your hair out for awhile.

Here's my .lt3\_config as a sample:

`{
  "author": "Bryan \"Beege\" Berry",
  "changelog":
  {
    "0.1.1": "test app"
  },  
  "contact": "bryanberry235711@gmail.com",
  "description": "lt3Heart - lt3 test app",
  "id": "thebeege-lt3Heart",
  "pages":
  {
    "index":
    {   
      "title": "string"
    },  
    "monkey":
    {   
      "kind": "string",
      "name": "string",
      "description": "string",
      "image": "string"
    }   
  },  
  "name": "lt3Heart",
  "type": "app",
  "version": "0.1.1"
}`

The lt3 folks have an example config file, but it's using CSON. Their code is invoking JSON.stringify, so that's no bueno. I may fork it and submit a pull request at some point.

I'm unsettled by the fact that this config file is on a per-user basis. I feel like if this platform is to be widely used, a given developer would want to work on multiple apps. I imagine it's possible that they expect an object for each app, but I'll need to test at some point. I'll update once I've tested that.

## Other Random Notes ## 

Running `lt3 init` creates the pkg directory and workspace.json file, but they both appear to be empty. I'm sure the docs comment on these, but I haven't gotten that far yet.

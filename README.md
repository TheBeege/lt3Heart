lt3Heart
========

This is my repo to mess around with the lessthan3 dev tools

# Getting Things Running #

## User Config File ##

lt3 creates a file ~/.lt3\_config. You'll want to edit this guy, otherwise lt3 will break when attempting to init, and you'll pull your hair out for awhile.
If you do it wrong, attempting `lt3 init` will spit out an error with "undefined", stating that it doesn't recognize character "u". This is because lt3 created the file with contents "undefined", and it's now trying to parse it as JSON.

Here's my .lt3\_config as a sample:

    {
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
    }

Now, I'm not sure if this config file is actually used...? I need to test. All I know is that it's required.

## Creating a Package

Basically, you can follow the steps at http://dev.lessthan3.com/docs/developing-a-theme, but I'm currently stuck on Step 6. Here's what I tried:

    beege@beege-VirtualBox:~/lt3Heart/pkg/demo-theme/0.1.1$ lt3 create -e entity-slug
    Failed to load c++ bson extension, using pure JS version
    must specify site slug
    beege@beege-VirtualBox:~/lt3Heart/pkg/demo-theme/0.1.1$ cd ../../
    beege@beege-VirtualBox:~/lt3Heart/pkg$ cd demo-theme/
    beege@beege-VirtualBox:~/lt3Heart/pkg/demo-theme$ lt3 create
    Failed to load c++ bson extension, using pure JS version
    must specify site slug
    beege@beege-VirtualBox:~/lt3Heart/pkg/demo-theme$ lt3 create site_slug app_slug pkg
    Failed to load c++ bson extension, using pure JS version
    could not find package app_slug@undefined
    beege@beege-VirtualBox:~/lt3Heart/pkg/demo-theme$ lt3 create demo-theme 0.1.1 pkg
    Failed to load c++ bson extension, using pure JS version
    could not find package 0.1.1@undefined
    beege@beege-VirtualBox:~/lt3Heart/pkg/demo-theme$ lt3 create demo-theme 0.1.1
    Failed to load c++ bson extension, using pure JS version
    could not find package 0.1.1@undefined

I found the site\_slug, app\_slug, and pkg references in the lessthan3 in lib/lt3.coffee at line 327. I'll muck with it more later and figure it out.

## Other Random Notes 

Running `lt3 init` creates the pkg directory and workspace.json file, but they both appear to be empty. I'm sure the docs comment on these, but I haven't gotten that far yet.

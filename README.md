# simple-static-site-generator
A very simple way of building and deploying your static website in seconds.

May be you don't want or need Gatsby, Hugo, Nuxt, Next, Jekyll and so on.
Then may be this comes in place. 

How can I deploy a website easily, quickly and safely without first downloading a static site generator or use ftp?

There are many Static Site Generators, https://www.staticgen.com,
to choose from, but then I suddenly remembered a very simple and secure solution from the last century, which was used at a full service internet agency where I worked. So basically it still works and is current, namely rsync over ssh.

## Best practices as mentioned are covered 

https://jamstack.org/best-practices/

- Because Jamstack projects don’t rely on server-side code, they can be distributed instead of living on a single server. √
- With a Jamstack project, anyone should be able to do a git clone, install any needed dependencies with a standard procedure (like npm install), and be ready to run the full project locally. √
- Take advantage of the world of modern build tools. √
- Because Jamstack markup is prebuilt, content changes won’t go live until you run another build. √
- You can avoid re-deploying hundreds of files with a system that lets you do “atomic deploys” √


## What kind of ingredients do we need?

Basically for convenience only:
* An IDE such as webstorm or vs code,
* a web server on Linux or Unix (most domains run on those),
* rsync (by default present on linux and macOS)
* ssh access (optional but recommended to be secure), i use it with an ssh-key
* Npm or yarn
* Shell (for example bash or zsh is running on local machine)


The important thing is npm and rsync to make it work. Well, if rsync is installed on Apple and Linux environments by default, otherwise you can download rsync, https://rsync.samba.org/download.html. Rsync must be present both locally and remotely for it to work. I use Apache as a webserver, but this can also be Nginx for example. You copy a folder with files to a server and that's it.

The 'src' directory with html templates and whatever you want(css, js, images) renders it into a full html website.
After the update is complete I want to deploy a current copy of my website. I then run a simple shell script, which includes a build command and a deployment command using rsync.
Within seconds my static website with ***only the changes*** is generated and available in the real world. It will also remove automatically the files from the server that are not present in your current build.

Benefits:
- Rsync and ssh are standard on macOS
- Also on most linux distributions or after installation (on Windows)
- No third party tools required
- Fast, simple and safe
- Extend the configuration yourself

Cons:
- No web interface aka GUI
- No deployment history, may be use git in stead
- Extend the configuration yourself



## npm scripts

I used npm scripts to build it local, this can be extended of course with numerous packages to add css and javascript and other stuff

## Installation

```shell
$ npm install
$ npm run build
$ npm start
$ ./deploy.sh
```



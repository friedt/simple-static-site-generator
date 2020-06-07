# simple-static-site-generator
A very simple way of deploying your static website

How can I deploy a website easily, quickly and safely without first downloading a static site generator or ftp?

There are many Static Site Generators, https://www.staticgen.com,
to choose from, but then I suddenly remembered a very simple and secure solution from the last century, which was used at a full service internet agency where I worked. So basically it still works and is current, namely rsync over ssh.

What kind of ingredients do we need?

Basically for convenience only:
* An IDE such as webstorm or vs code,
* a web server on Linux or Unix (most domains run on those),
* rsync (by default present on linux)
* ssh access (optional but recommended to be secure)
* Npm or yarn
* Shell (for example bash or zsh is running on local machine)

The important thing is npm and rsync to make it work. Well, if rsync is installed on Apple and Linux environments by default, otherwise you can download rsync here. Rsync must be present both locally and remotely for it to work. I use Apache as a webserver, but this can also be Nginx for example. You copy a folder with files to a server and that's it.


After the update is complete I want to deploy a current copy of my website. I then run a simple shell script, which includes a build command and a deployment command using rsync.
Within seconds my static website with only the changes is generated and available in the real world.

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



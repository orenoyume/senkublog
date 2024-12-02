+++
date = '2024-12-02T17:20:11+08:00'
draft = true
title = 'I am on Procedure Folder'
tags = ['Procedure', 'Blog']

+++

### Uploading changes to GitHub
Website
```
https://kimetsublog.github.io/kimetsublog/public/
```

> ==Important: I do not know why when I added the date, it failed to load the pages of html==

> ==During Testing: Edit the config.toml base url: "/" from /kimetsublog/public/==

Go to hugo root directory e.g. kimetsublog/
```bash
rsync -av --delete "/home/kimetsu/docker/obsidian/config/ObsidianFiles/ObsidianFiles/posts/" "/home/kimetsu/hugodocument/kimetsublog/content/posts/"
```

```bash
hugo
```

```bash
cd public
```

---

```bash
git add -A
```

or

```bash
git add .
```
---

```bash
git commit -m "xxx"
```

```bash
git push origin gh-pages --force
```

> Error on uploading using git add . use syntax below

```bash
git add -A
```
---

# Installation
> Trivia: ~/ (means home directory)

1. Update
```
sudo apt update && sudo apt upgrade -y
```

2. Install Git
```
sudo apt update && sudo apt upgrade -y
```

3. Install Go
```
sudo snap install go --classic
go version
go version go1.23.3 linux/amd64
```

4. Install Hugo
```
sudo apt install hugo -y
hugo version
```
> hugo v0.92.2+extended linux/amd64 BuildDate=2023-01-31T11:11:57Z VendorInfo=ubuntu:0.92.2-1ubuntu0.1

5. Set up the Hugo Directory
```
kimetsu@MSI:/$ cd /
kimetsu@MSI:/$ ls
bin  boot  dev  etc  home  init  lib  lib32  lib64  libx32  lost+found  media  mnt  opt  proc  root  run  sbin  snap  srv  sys  tmp  usr  var
kimetsu@MSI:/$ cd home
kimetsu@MSI:/home$ ls
kimetsu
kimetsu@MSI:/home$ cd kimetsu
kimetsu@MSI:~$ ls
docker  snap
kimetsu@MSI:~$ mkdir -p hugodocument
kimetsu@MSI:~$ cd hugodocument/
kimetsu@MSI:~/hugodocument$
```

6.  Create the Base of Hugo website population
```
hugo new site kimetsublog
```

> Congratulations! Your new Hugo site is created in /home/kimetsu/hugodocument/kimetsublog.
> Just a few more steps and you're ready to go:
> 
> 1. Download a theme into the same-named folder.
>    Choose a theme from https://themes.gohugo.io/ or
>    create your own with the "hugo new theme  THEMENAME" command.
> 2. Perhaps you want to add some content. You can add single files
>    with "hugo new SECTIONNAME/FILENAME.FORMAT".
> 3. Start the built-in live server via "hugo server".
> 
> Visit https://gohugo.io/ for quickstart guide and full documentation.

# Git Set-up
1. Initial
```
kimetsu@MSI:~/hugodocument/kimetsublog$ git init
```

> hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint:
hint:   git config --global init.defaultBranch name
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m name
Initialized empty Git repository in /home/kimetsu/hugodocument/kimetsublog/.git/

```
kimetsu@MSI:~/hugodocument/kimetsublog$ git config --global user.name "kimetsu"
kimetsu@MSI:~/hugodocument/kimetsublog$ git config --global user.mail "mr.zaldy.dg@gmail.com"
```

2. Install Themes as sub module (easy to do)
> Read the quick start on themes on how to install and configure.
```
kimetsu@MSI:~/hugodocument/kimetsublog$ git submodule add -f https://github.com/panr/hugo-theme-terminal.git themes/terminal
```

> Cloning into '/home/kimetsu/hugodocument/kimetsublog/themes/terminal'...
remote: Enumerating objects: 3164, done.
remote: Counting objects: 100% (1646/1646), done.
remote: Compressing objects: 100% (338/338), done.
remote: Total 3164 (delta 1405), reused 1402 (delta 1307), pack-reused 1518 (from 1)
Receiving objects: 100% (3164/3164), 4.48 MiB | 4.33 MiB/s, done.
Resolving deltas: 100% (1827/1827), done.

3. Edit the config : edit config. or hugo.toml
```bash
# baseURL = 'http://example.org/'
# languageCode = 'en-us'
title = 'Home: Zaldy Blog Site'
baseurl = "/kimetsublog/public/"
languageCode = "en-us"
# Add it only if you keep the theme in the `themes` directory.
# Remove it if you use the theme as a remote Hugo Module.
theme = "terminal"
paginate = 5

[params]
  # dir name of your main content (default is `content/posts`).
  # the list of set content will show up on your index page (baseurl).
  contentTypeName = "posts"

  # if you set this to 0, only submenu trigger will be visible
  showMenuItems = 2

  # show selector to switch language
  showLanguageSelector = false

  # set theme to full screen width
  fullWidthTheme = false

  # center theme with default width
  centerTheme = false

  # if your resource directory contains an image called `cover.(jpg|png|webp)`,
  # then the file will be used as a cover automatically.
  # With this option you don't have to put the `cover` param in a front-matter.
  autoCover = true

  # set post to show the last updated
  # If you use git, you can set `enableGitInfo` to `true` and then post will automatically get the last updated
  showLastUpdated = false

  # Provide a string as a prefix for the last update date. By default, it looks like this: 2020-xx-xx [Updated: 2020-xx-xx] :: Author
  # updatedDatePrefix = "Updated"

  # whether to show a page's estimated reading time
  # readingTime = false # default

  # whether to show a table of contents
  # can be overridden in a page's front-matter
  # Toc = false # default

  # set title for the table of contents
  # can be overridden in a page's front-matter
    # TocTitle = "Table of Contents" # default


[params.twitter]
  # set Twitter handles for Twitter cards
  # see https://developer.twitter.com/en/docs/tweets/optimize-with-cards/guides/getting-started#card-and-content-attribution
  # do not include @
  creator = "Zaldy aka Kimetsu"
  site = "work in progress"

[languages]
  [languages.en]
    languageName = "English"
    title = "Zaldy Blog Site"

    [languages.en.params]
      subtitle = "Be simple, content and dream big!"
      owner = "Zaldy"
      keywords = ""
      copyright = ""
      menuMore = "Show more"
      readMore = "Read more"
      readOtherPosts = "Read other posts"
      newerPosts = "Newer posts"
      olderPosts = "Older posts"
      missingContentMessage = "Page not found..."
      missingBackButtonLabel = "Back to home page"
      minuteReadingTime = "min read"
      words = "words"

      [languages.en.params.logo]
        logoText = "Home: Zaldy Blog Site"
        logoHomeLink = "/kimetsublog/public/"

      [languages.en.menu]
        [[languages.en.menu.main]]
          identifier = "about"
          name = "About"
          url = "/"
        [[languages.en.menu.main]]
          identifier = "showcase"
          name = "Showcase"
          url = "/"
```

> Note: Parts that I edit above and according to my preferences on github.

```bash
 title = 'Home: Zaldy Blog Site'
baseurl = "/kimetsublog/public/"
creator = "Zaldy aka Kimetsu"
  site = "work in progress"

[languages]
  [languages.en]
    languageName = "English"
    title = "Zaldy Blog Site"

    [languages.en.params]
      subtitle = "Be simple, content and dream big!"
      owner = "Zaldy"
[languages.en.params.logo]
        logoText = "Home: Zaldy Blog Site"
        logoHomeLink = "/kimetsublog/public/"

      [languages.en.menu]
        [[languages.en.menu.main]]
          identifier = "about"
          name = "About"
          url = "/"
        [[languages.en.menu.main]]
          identifier = "showcase"
          name = "Showcase"
          url = "/"
```

> Primarily, I got problem on GitHub base URL and it does not link the Hugo CSS, and html link but by editing the above parameters it works flawlessly.

4. Test the Server (terminal : the hugo theme name)
```bash
hugo server -t terminal
```

# Sync Obsidian with Hugo
1. Make Dir  on content for your post
```bash
kimetsu@MSI:~/hugodocument/kimetsublog$ cd content/
kimetsu@MSI:~/hugodocument/kimetsublog/content$ ls
kimetsu@MSI:~/hugodocument/kimetsublog/content$ mkdir -p posts
kimetsu@MSI:~/hugodocument/kimetsublog/content$ ls
posts
```

2. Source Folder : Obsidian Folder
```bash
/home/kimetsu/docker/obsidian/config/ObsidianFiles/ObsidianFiles/posts/
```

3. Destination: Hugo Folder
```bash
/home/kimetsu/hugodocument/kimetsublog/content/posts/
```

4. rsync
```bash
rsync -av --delete "/home/kimetsu/docker/obsidian/config/ObsidianFiles/ObsidianFiles/posts/" "/home/kimetsu/hugodocument/kimetsublog/content/posts/"
```

Test it
```bash
hugo server -t terminal
```

# GitHub Account Creation

```bash
kimetsu@MSI:~/hugodocument/kimetsublog$
```

1. Create ssh key
> If no .ssh folder, do the create folder below

```bash
mkdir -p ~/.ssh
chmod 700 ~/.ssh

ssh-keygen -t rsa -b 4096 -C "mr.zaldy.dg@gmail.com"

```

I use no passphrase

```bash
Generating public/private rsa key pair.
Enter file in which to save the key (/home/kimetsu/.ssh/id_rsa): /home/kimetsu/.ssh/my_id_rsa
```

Optional:
```bash
Go to Test before you do below command 1 and 2 if you can ssh on github
1. eval "$(ssh-agent -s)"
2. ssh-add ~/.ssh/my_id_rsa

Identity added: /home/kimetsu/.ssh/my_id_rsa (mr.zaldy.dg@gmail.com)
```


> Copy your rsa (all that appears)

```bash
kimetsu@MSI:~$ cat my_id_rsa.pub
```

> Go to GitHub profile, settings, ssh and gpg key

> If Error on authentication appears and permission
```bash
if error and no public key is detected make sure you have ssh key on .ssh (in my case i move it because i had a mistake)

mv /home/kimetsu/my_id_rsa /home/kimetsu/.ssh/
mv /home/kimetsu/my_id_rsa.pub /home/kimetsu/.ssh/

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/my_id_rsa

Identity added: /home/kimetsu/.ssh/my_id_rsa (mr.zaldy.dg@gmail.com)
```

TEST:
```bash
kimetsu@MSI:~/.ssh$ ssh -T git@github.com
```

> Hi kimetsublog! You've successfully authenticated, but GitHub does not provide shell access.

# Push your kimetsublog to GitHub
1. Remote repository add: profile username / repositoryname
```bash
git remote add origin git@github.com:kimetsublog/kimetsublog.git
```

2. Built the website
```bash
hugo
```

3. Upload all documents of hugo directory to git repository

```bash
git add .
```

Commit
```bash
kimetsu@MSI:~/hugodocument/kimetsublog$ git commit -m "hey, my first commit"
```

Push
```bash
git push -u origin master
```

# Publish the Page
1. Optional: Do this if No. 2 Does not work
> Deploy Only the public/ Folder
> Navigate to the public/ directory:
> 
```bash
cd public

git checkout -b gh-pages
git add .
git commit -m "Deploy Hugo site"
git push origin gh-pages --force

```

2. Configure GitHub Pages
> Go to your GitHub repository kimetsublog.
> Click on Settings > Pages (left-hand menu).
> Under "Source," select the gh-pages branch and save.
> GitHub will now build and host your website from the contents of the gh-pages branch.

3. Access the Website:
```bash
https://yourusername.github.io/kimetsublog/public
```

Problem Encountered: 
The website does not load the css and link is not working properly.
The problem is the config.toml base url like below:
```bash
i made it work by putting my base url to baseURL = "/kimetsublog/public/"

then all the css works now! 
```



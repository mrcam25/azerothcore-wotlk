# AzerothCore with added Kubernetes!!

## The Why

Firstly, yes, let me explain why I spent 4 day (including a few hours of dreaming about the config and why it wasn't working...)

I'm a DevOps Engineer by trade. I wanted to learn more about Kubernetes, Helm, Docker/Docker Compose, etc. so I decided to find a project where I could grow my skills and learn something outside of the workplace.

*That is the only reason I did this, it's intended purpose is for learning and research only. This Helm Chart should **NOT** be used for any illegal activity.*

I first discovered AzerothCore many years ago when I was a Software Dev. However, the thought of learning C/C++ scared me so I wasn't sure if I could ever contribute. I've always loved gaming, Open Source technology and learning things and after switching from Software Dev to DevOps Engineer, I still wanted to contribute to something. Thankfully, I couldn't see a kubernetes manifest for AzerothCore so set out to be one of the first to do so.

It's not a finished project by any stretch but it is *a* project now. Happy for anyone to fork this, make changes and tell my why/how to do it better ;)

## Build and Deploy

Quick overview: it's using a Helm Chart and Templates to pull Docker images down and build up kubernetes pods inside a cluster.

1. Run `Docker Compose Build`
2. Run ```helm upgrade azerothcore-wotlk . --install --debug --create-namespace -nazerothcore-wotlk```
3. Run `create_mysql.sql`
4. Wait for `db-import-job` to run - it needs the above SQL adding to run
5. Wait for the `ac-worldserver` and `ac-authserver` to run - they need the import to have completed first
6. Shell into the `ac-worldserver` pod and use `screen -r worldserver` to access the command prompt from the AzerothCore docs

The command for running the Helm Upgrade uses 4 flags:
- "--install" create if doesn't already exist
- "--debug" spits out the deploy output whilst it's working, very handy
- "--create-namespace" this is pretty self-explanitory
- "-n" the namespace name

You need to be in the newly created `azerothcore-wotlk/deploy` directory for it to run correctly.

## Tools and Programs

*I'm listing the tools and programs I needed to make it all run in K8s - so things like Docker Compose which were already present, aren't included.*

1. Tilt (https://tilt.dev) - Absolute lifesaver when at day 3 I was starting to tear my hair out!
2. OpenLens (https://github.com/MuhammedKalkan/OpenLens) - I use OpenLens everyday at work (I do Tilt as well but I'll explain why) as it makes a great deal of debugging and testing way easier
3. Rancher-Desktop (https://rancherdesktop.io/) - Teeny-tiny k3s on my not so powerful machine. Super quick and handy. Again, use everyday in working life, made sense to use in personal too.
4. ChatGPT (https://chatgpt.com) - Because debugging images I hadn't build from scratch would've taken longer than 4 days.

## changelog

*At time of writing, 26/08/2024, MVP is achieved - clean up to commence at some point...maybe*

*260824.01*

modified: 
1. azerothcore-wotlk/apps/docker/Dockerfile - added `screen` install into `runtime` services
2. azerothcore-wotlk/data/sql/create/create_mysql.sql - changed `localhost` to `%`
3. azerothcore-wotlk/src/server/apps/authserver/authserver.conf.dist - converted localhost IP address to K8s Service for Database
4. azerothcore-wotlk/src/server/apps/worldserver/worldserver.conf.dist - added DataDir, LogsDir, TempDir locations and converted localhost IP address to K8s Service for Database
5. azerothcore-wotlk/src/tools/dbimport/dbimport.conf.dist - converted localhost IP address to K8s Service for Database

added:
1. azerothcore-wotlk/deploy - contains helm chart, values and templates
2. azerothcore-wotlk/Tiltfile - Tiltfile which adds namespace and builds the /deploy directory

removed:

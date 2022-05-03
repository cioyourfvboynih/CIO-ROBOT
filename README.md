</p>

<p align="center">
  <img src="https://telegra.ph/file/3996f33bcfdada41a93a9.jpg">
</p>

<h1 align="center">
  <b>ALBERT - ROBOT</b>
</h1>

<b>A stable pluggable Telegram userbot + Voice & Video Call music bot, based on Telethon.</b>

[![](https://img.shields.io/badge/ALBERT-ROBOT-v0.5-blue)](#)
[![Stars](https://img.shields.io/github/stars/Lordtrek/ALBERT-ROBOT?style=flat-square&color=yellow)](https://github.com/Lordtrek/ALBERT-ROBOT/stargazers)
[![Forks](https://img.shields.io/github/forks/Lordtrek/ALBERT-ROBOT?style=flat-square&color=orange)](https://github.com/TeamUltroid/ALBERT-ROBOT/fork)
[![Size](https://img.shields.io/github/repo-size/Lordtrek/ALBERT-ROBOT?style=flat-square&color=green)](https://github.com/Lordtrek/ALBERT-ROBOT/)   
[![Python](https://img.shields.io/badge/Python-v3.10.2-blue)](https://www.python.org/)
[![CodeFactor](https://www.codefactor.io/repository/github/Lordtrek/ALBERT-ROBOT/badge/main)](https://www.codefactor.io/repository/github/teamultroid/ALBERT-ROBOT/overview/main)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/Lordtrek/ALBERT-ROBOT/graphs/commit-activity)
[![Docker Pulls](https://img.shields.io/docker/pulls/theteamultroid/ultroid?style=flat-square)](https://img.shields.io/docker/pulls/theteamultroid/ALBERT-ROBOT?style=flat-square)   
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/Lordtrek/ALBERT-ROBOT)
[![Contributors](https://img.shields.io/github/contributors/Lordtrek/ALBERT-ROBOT?style=flat-square&color=green)](https://github.com/Lordtrek/ALBERT-ROBOT/graphs/contributors)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
[![License](https://img.shields.io/badge/License-AGPL-blue)](https://github.com/Lordtrek/ALBERT-ROBOT/blob/main/LICENSE)   
[![Sparkline](https://stars.medv.io/Lordtrek/ALBERT-ROBOT.svg)](https://stars.medv.io/Lordtrek/ALBERT-ROBOT)
----

# Deploy
- [Heroku](#Deploy-to-Heroku)
- [Local Machine](#Deploy-Locally)

# Documentation 
[![Documentation](https://img.shields.io/badge/Documentation-Ultroid-blue)](http://ultroid.tech/)

# Tutorial 
- Full Tutorial - [![Full Tutorial](https://img.shields.io/badge/Watch%20Now-blue)](https://www.youtube.com/watch?v=0wAV7pUzhDQ)

- Tutorial to get Redis URL and password - [here.](./resources/extras/redistut.md)
---


## <p align="center">DEPLOY TO HEROKU</p>

<p align="center"><a href="https://heroku.com/deploy?template=https://github.com/Lordtrek/ALBERT-ROBOT">
  <img src="https://img.shields.io/badge/Deploy%20To%20Heroku-aqua?style=flat&logo=heroku" width="325" height="50.100" /></a></p>




## Deploy Locally
- [Traditional Method](#local-deploy---traditional-method)
- [Easy Method](#local-deploy---easy-method)
- [Ultroid CLI](#Ultroid-CLI)

### Local Deploy - Easy Method
- Linux - `wget -O locals.py https://git.io/JY9UM && python3 locals.py`
- Windows - `cd desktop ; wget https://git.io/JY9UM -o locals.py ; python locals.py`
- Termux - `wget -O install-termux https://tiny.ultroid.tech/termux && bash install-termux`

### Local Deploy - Traditional Method
- Get your [Necessary Variables](#Necessary-Variables)
- Clone the repository:    
`git clone https://github.com/TeamUltroid/Ultroid.git`
- Go to the cloned folder:    
`cd Ultroid`
- Create a virtual env:      
`virtualenv -p /usr/bin/python3 venv`
`. ./venv/bin/activate`
- Install the requirements:      
`pip(3) install -U -r re*/st*/optional-requirements.txt`
`pip(3) install -U -r requirements.txt`
- Generate your `SESSION`:
  - For Linux users:
    `bash sessiongen`
     or
    `wget -O session.py https://git.io/JY9JI && python3 session.py`
  - For Termux users:
    `wget -O session.py https://git.io/JY9JI && python session.py`
  - For Windows Users:
    `cd desktop ; wget https://git.io/JY9JI -o ultroid.py ; python ultroid.py`
- Fill your details in a `.env` file, as given in [`.env.sample`](https://github.com/TeamUltroid/Ultroid/blob/main/.env.sample).
(You can either edit and rename the file or make a new file named `.env`.)
- Run the bot:
  - Linux Users:
   `bash startup`
  - Windows Users:
    `python(3) -m pyUltroid`

### Ultroid CLI
[Ultroid CLI](https://github.com/BLUE-DEVIL1134/UltroidCli) is a command-line interface for deploying Ultroid.   

- **Installing** -    
Run the following code on a terminal, with curl installed.   
`ver=$(curl https://raw.githubusercontent.com/BLUE-DEVIL1134/UltroidCli/main/version.txt) && curl -L -o ultroid https://github.com/BLUE-DEVIL1134/UltroidCli/releases/download/$ver/ultroid.exe`
OR
Go to [UltroidCli](https://github.com/BLUE-DEVIL1134/UltroidCli) and install the version release from the Github Releases. Add the executable to your system path as specified in the [Readme](https://github.com/BLUE-DEVIL1134/UltroidCli#how-to-use-ultroidcli-).   

- **Documentation** -
Take a look at the [`docs`](https://blue-devil1134.github.io/UltroidCli/) for more detailed information.

---
## Necessary Variables
- `SESSION` - SessionString for your accounts login session. Get it from [here](#Session-String)

One of the following database:
- For **Redis** (tutorial [here](./resources/extras/redistut.md))
  - `REDIS_URI` - Redis endpoint URL, from [redislabs](http://redislabs.com/).
  - `REDIS_PASSWORD` - Redis endpoint Password, from [redislabs](http://redislabs.com/).
- For **MONGODB**
  - `MONGO_URI` - Get it from [mongodb](https://mongodb.com/atlas).
- For **SQLDB**
  - `DATABASE_URL`- Get it from [elephantsql](https://elephantsql.com).

## Session String
Different ways to get your `SESSION`:
* [![Run on Repl.it](https://replit.com/badge/github/TeamUltroid/Ultroid)](https://replit.com/@TeamUltroid/UltroidStringSession)
* Linux : `wget -O session.py https://git.io/JY9JI && python3 session.py`
* PowerShell : `cd desktop ; wget https://git.io/JY9JI ; python ultroid.py`
* Termux : `wget -O session.py https://git.io/JY9JI && python session.py`
* TelegramBot : [@SessionGeneratorBot](https://t.me/SessionGeneratorBot)

---

# License
[![License](https://www.gnu.org/graphics/agplv3-155x51.png)](LICENSE)   
Ultroid is licensed under [GNU Affero General Public License](https://www.gnu.org/licenses/agpl-3.0.en.html) v3 or later.

---

# Credits
* [![TeamUltroid-Devs](https://img.shields.io/static/v1?label=Teamultroid&message=devs&color=critical)](https://t.me/UltroidDevs)
* [Lonami](https://github.com/LonamiWebs/) for [Telethon.](https://github.com/LonamiWebs/Telethon)
* [MarshalX](https://github.com/MarshalX) for [PyTgCalls.](https://github.com/MarshalX/tgcalls)

> Made with 💕 by [@TeamUltroid](https://t.me/TeamUltroid).    

# PiIpServer

Files:

- **config_pi.sh** - to be run on student devices to set them up to ping server on boot
- **ping.sh** - for local testing of server
- **server.py** - the python server `config_pi.sh` should be hitting
- **views/home.tpl** - the bottle template file used to render the server UI [see this for more info on .tpl](https://bottlepy.org/docs/dev/stpl.html)

## Configuration

This setup relies on having the domain name/ip address of an active server. Once one is established, `config_pi.sh` will need to be modified to point to the correct ip address and port, and `server.py` will potentially need to be modified to mount to the server and port.

## Usage (Server)

First you will need to install the requirements for the python app

```bash
pip3 install -r requirements.txt
```

Then you can run the server with

```bash
python server.py --pwd [your_password]
```

The password will be used to define a route for use by the pis, which the students will need to know when running the config script. It must contain only URL safe characters

## Usage (Installation Script)

The installer (config_pi.sh) needs to be run on all new Pis for the course. This will configure your Pi to hit the ESE205 IP server, and can be done via:

```bash
curl https://raw.githubusercontent.com/ESE205/PiIpServer/main/config_pi.sh | bash -s
```

The script will ask students for a username, which will be displayed on the website, and a password, which is established when the server is run. Both must only contain URL safe characters.

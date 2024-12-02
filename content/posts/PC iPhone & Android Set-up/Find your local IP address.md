+++
date = '2024-12-02T17:20:11+08:00'
draft = false
title = 'Find your local IP address'
categories = ['pc']
tags = ['syntax']
weight = 100
[params]
  author = 'senkublog'
+++

To share your `localhost:3000` with another PC on the same network, follow these steps:

1. **Find Your Local IP Address**:
   - On Windows, open Command Prompt and type `ipconfig`. Look for the "IPv4 Address" under your network connection.
   - On macOS or Linux, open Terminal and type `ifconfig` or `ip a`. Look for the IP address associated with your network interface.

2. **Access the Server from Another PC**:
   - On the other PC, open a web browser and type your local IP address followed by `:3000`. For example, if your IP address is `192.168.1.100`, you would enter `http://192.168.1.100:3000`.

### Example Steps on Windows:
1. Open Command Prompt and type:
   ```sh
   ipconfig
   ```
   Find the IPv4 address, e.g., `192.168.1.100`.

2. On the other PC, open a browser and go to:
   ```sh
   http://192.168.1.100:3000
   ```

### Example Steps on macOS/Linux:
1. Open Terminal and type:
   ```sh
   ifconfig
   ```
   or
   ```sh
   ip a
   ```
   Find the IP address, e.g., `192.168.1.100`.

2. On the other PC, open a browser and go to:
   ```sh
   http://192.168.1.100:3000
   ```

This should allow the other PC to access your `localhost:3000` server¹⁶.

If you encounter any issues, make sure your firewall settings allow traffic on port 3000 and that your server is configured to accept connections from other devices on the network.

Feel free to ask if you need more detailed instructions or run into any problems!
# WireGuard Configuration Checker

![WireGuard Logo](https://www.wireguard.com/img/wireguard.svg)

Welcome to WireGuard Configuration Checker! This project aims to provide a simple and efficient solution for testing WireGuard configurations using Docker Compose.

## Overview

WireGuard is a modern VPN (Virtual Private Network) technology known for its simplicity and performance. However, configuring WireGuard can sometimes be tricky, especially when dealing with complex network setups. To ensure that your WireGuard configuration is working as expected, this tool utilizes Docker Compose to set up a test environment and verify the functionality of your configuration.

## Features

- **Easy Testing**: Quickly test your WireGuard configuration without the need for complex setup.
- **Docker Compose**: Utilizes Docker Compose for creating isolated test environments.
- **Fast Feedback**: Receive immediate feedback on the status of your WireGuard configuration.

## Usage
1. **Clone the repo**
    ```bash
    git clone https://github.com/xnullzz/wg-checker.git && cd ./wg-checker
    ```
2. ** Put configuration file under wireguard directory**
    ```bash
    cp /path/to/your/config ./wireguard
    ```

3. **Build Docker Image**:
    ```bash
    docker build -t wg-checker .
    ```

4. **Run Test**:
    ```bash
    docker compose run --rm wg-checker
    ```
**Please notice!** This test is used only for client configuration files, it is not used for checking syntax. 
The main workflow of the script is pretty simple: Putting configuration file into internal /etc/wireguard directory -> Trying to run the wg-quick up *.conf -> Checking if Endpoint IP and ifconfig.me IP are same   

## How It Works

WireGuard Configuration Checker sets up a simple Docker container with WireGuard installed. It then attempts to establish a connection using the provided WireGuard configuration file. Upon completion, it provides feedback regarding the success or failure of the connection attempt.

## Why docker?

Docker containerization provides a fast and easy way to isolate the wireguard from the host machine network, which gives a good way to check configuration availability without disturbing the current network setup.

## Requirements

- Docker
- Docker Compose

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

**Disclaimer**: This project is provided as-is without any warranties. Use at your own risk.


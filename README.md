# FortiClient VPN Action (OpenConnect)

[![GitHub Marketplace](https://img.shields.io/badge/Marketplace-Forticlient%20VPN-blue.svg)](https://github.com/marketplace/actions/forticlient-vpn)

A GitHub Action to seamlessly connect to a Fortinet/FortiClient VPN from your workflow runners using OpenConnect. 

This is particularly useful when your CI/CD jobs need to access internal networks, deploy to private servers, or interact with protected APIs during the workflow execution.

## 🚀 Usage

Add the action to your workflow file. Make sure to store your VPN credentials securely using GitHub Secrets.

```yaml
name: Deploy to Internal Network
on: [push]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Connect to FortiClient VPN
        uses: horellana/openconnect@v1.0.1
        with:
          host: ${{ secrets.VPN_HOST }}
          user: ${{ secrets.VPN_USER }}
          password: ${{ secrets.VPN_PASSWORD }}
          # servercert: ${{ secrets.VPN_SERVER_CERT }} # Optional: Required if your server uses a self-signed certificate

      - name: Execute Internal Job
        run: |
          echo "You are now connected to the internal network."
          # Add your deployment, curl, or ssh commands here
```

## ⚙️ Inputs

| Input | Description | Required | Default |
| --- | --- | --- | --- |
| `host` | The VPN server hostname, IP address, or gateway URL. | Yes | N/A |
| `user` | Your FortiClient VPN username. | Yes | N/A |
| `password` | Your FortiClient VPN password. | Yes | N/A |
| `servercert` | The server certificate hash (useful if connecting to a server with a self-signed cert). | No | N/A |


## 📝 License

This project is open-source and available under the MIT License.

## Linux Snippets, Gists, How-Tos

How to set up swap file and enable hibernation from it: https://web.archive.org/web/20221208004639/https://fitzcarraldoblog.wordpress.com/2018/07/14/configuring-lubuntu-18-04-to-enable-hibernation-using-a-swap-file/

```bash
# Turn off all swapfiles
sudo swapoff -a
# Create 4GB empty /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1024 count=4M
# Set appropriate permissions for it
sudo chmod 600 /swapfile
# Format empty file as swapspace
sudo mkswap /swapfile
# Turn on swapfile
sudo swapon /swapfile
```

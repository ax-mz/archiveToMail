# 📧 archiveToMail (atm)
Submit the identifier of an [archive.org](https://archive.org/) item. Script extracts the uploader's email address from its metadata and displays it in terminal.<br>

#### ℹ️ How to find the identifier ?
The unique identifier of an item can be found in the URL, right between `/details/` and the next `/`. <br>
For *https://archive.org/details/gandi*, the identifier is `gandi` <br>
For *https://archive.org/details/scpo_colo0054/mode/1up*, the identifier is `scpo_colo0054`

## 💡 Prerequisite
* [`jq`](https://stedolan.github.io/jq/download/)
  - `sudo apt install jq`
  - `sudo dnf install jq`
  - `sudo pacman -S jq`
  - `brew install jq`

## 🛠️ Installation
```bash
git clone https://github.com/ax-mz/archiveToMail.git
cd archiveToMail/
chmod +x atm.sh
```

## 💻 Usage
```bash
./atm.sh [IDENTIFIER]
```
## 👀 Example
```console
user@machine:~/archiveToMail$ ./atm.sh gandi
indianturism@gmail.com
user@machine:~/archiveToMail$ ▉
```
with alias:
```console
user@machine:~$ atm scpo_colo0054
numerisation.bib@sciencespo.fr
user@machine:~$ ▉
```

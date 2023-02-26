# 📧 archiveToMail (atm)
Submit the identifier of an [archive.org](https://archive.org/) item. Script extracts the uploader's email address from its metadata and displays it in terminal.<br>

## 💡 Prerequisite
* [`jq`](https://stedolan.github.io/jq/download/)
* `curl`

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

#### ℹ️ How to find the identifier ?
The unique identifier of an item can be found in the URL. <br>
For *http://archive.org/details/popeye_taxi-turvey*, the identifier is `popeye_taxi-turvey` <br>
For *https://archive.org/details/lettuce2023-01-28/Lettuce2023-01-28t04.flac*, the identifier is `lettuce2023-01-28`

## 👀 Demo
![Image](https://i.imgur.com/D3qIaI3.png)

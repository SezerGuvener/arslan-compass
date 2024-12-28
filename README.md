# GTA 5 için Basit Pusula Komut Dosyası (FiveM) #TR

Bu, GTA 5 (FiveM) için oyuncunun yönünü, sokak adını ve bölgesini gösteren basit bir pusula scriptidir. Oyuncunun ekranında bir pusula oluşturmak için NUI kullanır.

Bu script, VennyV geliştirici ekibinden **herayoo'nun** yapmış olduğu scriptin görselinden esinlenerek geliştirilmiştir.

[Önizlenim](https://streamable.com/8bo18g) 

## Özellikler

- Oyuncunun yönünü gösterir (Kuzey, Kuzey-Doğu, Doğu, vb.).
- Oyuncunun o anda bulunduğu caddenin adını gösterir.
- Bölge adını görüntüler (örneğin, konut, sanayi, vb.).
- Pusulayı `/pusula` komutu ile açıp kapatabilirsiniz.
- Hafif ve kullanımı kolay.

## Eksikler

- Pusula açık olduğunda karakter seçim ekranında da pusula görünmeye devam ediyor. Bu durumu nasıl düzeltebileceğimi çözemedim. Eğer çözebilen olursa, bana Discord üzerinden ulaşırsa sevinirim.
- Discord Kullanıcı ID: 333922744238342146 

## Kurulum

1. Depoyu indirin veya FiveM sunucunuzdaki `resources` klasörüne klonlayın.

2. Kaynağın başladığından emin olmak için `server.cfg` dosyanıza aşağıdaki satırı ekleyin:

    ```bash
    ensure arslan-compass
    ```

## Konfigürasyon

- Komut dosyası `/pusula` komutu ile kullanılmak üzere yapılandırılmıştır. Pusulanın görünürlüğünü değiştirmek için bunu oyun sohbetinde yazın.
- Pusula, oyuncu bir aracın içindeyken veya manuel olarak açıldığında görüntülenecektir.

## Komutlar

- `/pusula`: Pusulayı açar veya kapatır. Değiştirildiğinde oyunda bir bildirim gösterilecektir.

## Kullanım

1. FiveM sunucunuzu başlatın ve oyuna katılın.
2. Pusulayı açmak veya kapatmak için sohbette `/pusula` yazın.
3. Pusula yönü, sokak adını ve bölgeyi gösterecektir.

## Lisans

Bu proje açık kaynak kodludur ve kullanımı ücretsizdir. Gerektiği gibi değiştirebilir ve dağıtabilirsiniz. Ancak, kendi projenizde kullanırsanız lütfen orijinal yaratıcıya atıfta bulunun.

## Yaratıcı

- **Qaisenix**

# Simple Compass Script for GTA 5 (FiveM) #EN

This is a simple compass script for GTA 5 (FiveM) that shows the player's direction, street name and area. It uses NUI to create a compass on the player's screen.

This script was inspired by the image of the script made by **herayoo** from the VennyV developer team.

[Priview](https://streamable.com/8bo18g) 

## Features

- Indicates the player's direction (North, North-East, East, etc.).
- Displays the name of the street the player is currently on.
- Displays the region name (e.g. residential, industrial, etc.).
- You can turn the compass on and off with the `/compass` command.
- Lightweight and easy to use.

## Shortcomings

- When the compass is on, the compass continues to appear on the character selection screen. I can't figure out how to fix this, so if anyone can figure it out, please contact me on Discord.
- Discord User ID: 333922744238342146 

## Installation

1. Download the repository or clone it to the `resources` folder on your FiveM server.

2. To make sure the source starts, add the following line to your `server.cfg` file:

    ```bash
    ensure arslan-compass
    ```

## Configuration

- The script is configured to be used with the `/compass` command. To change the visibility of the compass, type it in the game chat.
- The compass will be displayed when the player is inside a vehicle or manually turned on.

## Commands

- `compass`: Turns the compass on or off. A notification will be shown in the game when it is changed.

## Usage

1. Start your FiveM server and join the game.
2. Type `compass` in chat to turn the compass on or off.
3. The compass will show the direction, street name and area.

## License

This project is open source and free to use. You can modify and distribute it as needed. However, please credit the original creator if you use it in your own project.

## Creative

- **Qaisenix**

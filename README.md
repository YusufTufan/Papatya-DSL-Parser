# Papatya DSL Parser
Papatya: A lightweight parsing solutio

# 🌼 Papatya DSL Parser
 
**Papatya**, grafik çizim işlemlerini basitleştirmek amacıyla tasarlanmış bir alan özgü dil (DSL)'dir. Bu proje, Papatya dilinin söz dizimi analizini yapmak ve girdilere göre nokta/çizgi gibi grafiksel nesneleri işleyebilmek için bir lexer ve parser içerir.

## 🎯 Amaç

- Basit komutlarla grafik çizim nesnelerini tanımlamak  
- Nokta ve çizgi gibi öğeleri yorumlayarak çizim mantığını oluşturmak  
- Flex (lexer) ve Bison (parser) ile bir dilin temel analiz altyapısını inşa etmek

## 🛠️ Kullanılan Teknolojiler

- **Flex (Lex)** — Anahtar kelimeleri ve sembolleri tarar  
- **Bison (Yacc)** — Gramer kurallarına göre komutları ayrıştırır  
- **C** — Ana uygulama yapısı  
- **VS Code / Linux terminal** — Geliştirme ortamı

## 🧪 Desteklenen Komutlar

| Komut            | Açıklama                                |
|------------------|------------------------------------------|
| `PAPATYA`        | Komut bloğunun başlangıcını belirler     |
| `DRAW_POINT`     | Belirtilen koordinatta nokta çizer       |
| `LINE`           | İki nokta arasında çizgi oluşturur       |
| `FROM` / `TO`    | Çizginin başlangıç ve bitiş noktası      |
| `X`, `Y`         | Koordinat bileşenleri                    |
| `ESITTIR (=)`    | Atama operatörü                          |
| `NOKTALI_VIRGUL` | Komut sonlandırıcı (;)                   |
| `NOKTA`          | Nokta tanımı için kullanılır             |

## 💡 Dil Özellikleri

- **Veri Tipleri**: SAYI (int), ID (string)  
- **Kontrol Yapısı**: Yok (gelecekte if-else ve döngü eklenebilir)  
- **Fonksiyon**: Tanım/çağrı desteği yok  
- **Çizim İşlemleri**: `DRAW_POINT` ve `LINE` komutlarıyla sınırlı

## 📄 Örnek Girdi

```text
PAPATYA;
DRAW_POINT X=10, Y=20;
DRAW_POINT X=15, Y=25;
LINE FROM X=5, Y=5 TO X=100, Y=100;
```

## ✅ Çıktı Davranışı

* Noktalar belirtilen koordinatlara çizilir.
* `LINE` komutu ile iki nokta arası bağlantı tanımlanır.
* Başarılı girişlerde bilgilendirme mesajları, hatalı girişlerde açıklayıcı hata mesajları gösterilir.

## 👨‍💻 Geliştirenler
Bu proje, Pamukkale Üniversitesi CENG 218 – Programlama Dilleri dersi kapsamında hazırlanmıştır.


📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

Copyright (c) 2025 YusufTufan

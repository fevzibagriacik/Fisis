Fisis

Bu proje, Flutter ile geliştirilmiş kapsamlı bir kullanıcı yönetim sistemidir. Uygulama, normal kullanıcıların kendi profillerini görüntüleyebilmesini sağlarken, admin kullanıcıya tüm kullanıcılar üzerinde tam yetki verir. Modern UI bileşenleri, asenkron veri yönetimi ve performanslı navigasyon ile kullanıcı deneyimi ön planda tutulmuştur.

Özellikler

Login Sistemi

Kullanıcı adı, soyadı ve doğum ayı ile giriş yapılır.

Özel bir istisna: Fevzi / Bağrıaçık / 12345678 bilgileri girildiğinde admin girişi aktif olur.

Kullanıcı Profili

Normal kullanıcılar kendi profil bilgilerini görüntüleyebilir.

Sadece kendi verilerine erişebilir, diğer kullanıcıların verilerini göremez veya değiştiremez.

Admin Paneli

Tüm kullanıcılar GridView ile listelenir.

Her kullanıcıya tıklama GestureDetector ile yakalanır ve admin ayrı bir kullanıcı detay sayfasına yönlendirilir.

Adminin kullanıcı detay sayfası, normal kullanıcı sayfasından farklıdır:

Silme (Delete) işlemi yapılabilir.

Güncelleme (Update) işlemi için ayrı bir sayfaya geçiş yapılabilir.

Admin panelinde ayrıca Floating Action Button (FAB) ile yeni kullanıcı ekleme sayfasına geçiş yapılabilir.

Veritabanı Yönetimi ve Asenkron İşleyiş

DatabaseSupport sınıfı, uygulamanın çekirdek veritabanı bağlantısını sağlar ve tüm DB işlemlerini organize eder.

PersonsDao sınıfı, kullanıcı verilerini yönetmek için tasarlanmıştır.

CRUD işlemleri Future tabanlı async fonksiyonlar ile gerçekleştirilir; bu sayede veritabanı sorguları asenkron olarak çalışır, UI bloklanmaz ve kullanıcı deneyimi kesintisiz olur.

UI / UX

Modern ve kullanıcı dostu arayüzler.

GridView ile görsel olarak düzenli kullanıcı listesi.

GestureDetector ile interaktif seçimler ve navigasyon.

Floating Action Button ile hızlı erişim ve kolay navigasyon.

Kullanıcı Senaryosu (Normal Kullanıcı)

Uygulamayı açtığında karşına giriş ekranı çıkar.

Buraya adını, soyadını ve doğduğun ayı girersin.

Eğer bu bilgiler doğruysa:

Giriş başarılı olur.

Seni kendi profil sayfana yönlendirir.

Burada sadece kendi bilgilerini görebilir ve inceleyebilirsin.

Başka kullanıcıların bilgilerini göremez veya değiştiremezsin.

Özet: Normal kullanıcı sadece kendi bilgilerini görür ve kontrol eder.

Admin Senaryosu (Yönetici)

Uygulamayı açtığında yine giriş ekranı gelir.

Buraya özel admin bilgilerini girersin:

Ad: Fevzi

Soyad: Bağrıaçık

Şifre (Doğduğun Ay): 12345678

Giriş başarılı olursa seni Admin Paneline yönlendirir.

Admin panelinde şunları yapabilirsin:

Tüm kullanıcıları liste halinde görürsün.

Listeden herhangi bir kullanıcıya tıklarsın.

Normal kullanıcıların gördüğü sayfadan farklı bir sayfa açılır.

Burada o kullanıcıyı silebilir (Delete) veya bilgilerini güncelleyebilirsin (Update).

Yeni kullanıcı eklemek için + butonuna (FAB) tıklayabilirsin.

Yeni kullanıcı ekledikten sonra tekrar listeye dönersin ve eklediğin kullanıcıyı görebilirsin.

Özet: Admin, tüm kullanıcılar üzerinde tam kontrol sahibidir: görebilir, silebilir, güncelleyebilir ve yeni kullanıcı ekleyebilir.

Teknolojiler ve Kütüphaneler

Flutter & Dart

Material Design bileşenleri

Veritabanı bağlantısı: DatabaseSupport sınıfı

Veri erişimi ve yönetimi: PersonsDao (CRUD işlemleri için Future/async fonksiyonlar)

GridView, GestureDetector, Floating Action Button ile interaktif UI

StatefulWidget ve setState ile state management

Özet

Bu proje, hem normal kullanıcılar hem de adminler için tam kapsamlı bir yönetim sistemi sunar.

Normal kullanıcılar sadece kendi verilerini görüntüleyebilir.

Admin, tüm kullanıcılar üzerinde tam yetkiye sahiptir: görüntüleme, silme, güncelleme ve yeni kullanıcı ekleme işlemlerini gerçekleştirebilir.

Asenkron veritabanı yönetimi ve modern Flutter UI bileşenleri ile uygulama performanslı, akıcı ve kullanıcı dostudur.

# Maliyet Hesaplayıcı

Bu proje, ambalaj maliyetlerini optimize etmek üzere geliştirdiğim mobil uygulamanın kaynak kodlarını içerir. Uygulama; verilen hacim, şekil ve malzeme parametrelerine göre üretim ve malzeme maliyetlerini dikkate alarak en uygun kutu ölçülerini ve maliyet alternatiflerini hesaplar.

Özellikler
- Verilen hacim ve boyut sınırlamalarına göre uygun kutu çözümleri üretir.
- Malzeme kalınlığı, birim maliyet ve yüzey işlemleri gibi parametreleri dikkate alır.
- Farklı üretim senaryoları için maliyet karşılaştırması sunar.
- Hesaplama performansı kritik kısımlarda C/C++ tabanlı modüllerle optimize edilmiştir.
- Platform: Flutter tabanlı kullanıcı arayüzü ile mobil (iOS/Android) deneyimi sağlar.

Teknolojiler
- Dart / Flutter — kullanıcı arayüzü ve uygulama mantığı
- C / C++ ve CMake — performans gerektiren hesaplama modülleri
- Swift — iOS platformuna özgü entegrasyonlar
- HTML — proje dokümantasyonu ve varlıklar

Kurulum ve çalıştırma
1. Gereksinimler:
   - Flutter SDK (stable) kurulumu
   - Gerekli native araç zinciri (Android SDK / Xcode) platforma göre
2. Depoyu klonlayın:
   - git clone https://github.com/ynskhrmn0/maliyet_hesaplayici.git
3. Bağımlılıkları yükleyin:
   - cd maliyet_hesaplayici
   - flutter pub get
4. Uygulamayı çalıştırın:
   - flutter run

Not: Native C/C++ modüllerinin derlenmesi için sisteminizde CMake ve ilgili platform derleyicilerinin kurulu olması gereklidir. iOS için Xcode ile proje açılırken CocoaPods veya benzeri bağımlılık yöneticileri gerekebilir.

Kullanım
- Uygulama arayüzünden hedef hacim, maksimum/minimum kenar uzunlukları, malzeme birim maliyeti ve tercih edilen üretim toleranslarını girin.
- Hesaplama işlemi, olası kutu kombinasyonlarını değerlendirerek en düşük maliyetli alternatifleri ve her alternatif için maliyet bileşenlerini (malzeme, işçilik, kesim/işlem) listeler.
- Sonuçlar CSV veya benzeri formatta dışa aktarılabilir (uygulama içi seçeneklere bağlı olarak).

Proje yapısı (kısa)
- lib/        — Flutter/Dart uygulama kodu
- ios/        — iOS platforma özgü kaynaklar ve Swift entegrasyonları
- android/    — Android yapılandırmaları
- native/     — C/C++ kaynakları ve CMake konfigürasyonları
- assets/     — uygulama görselleri ve statik kaynaklar

Testler ve doğrulama
- Hesaplama modüllerini doğrulamak için birim testleri ve karşılaştırmalı senaryolar eklenmiştir. Testleri çalıştırmak için:
  - flutter test

Bakım ve katkı
- Kodda iyileştirme veya yeni özellik önerileri için branch ve pull request akışını kullanın. Değişiklikler net commit mesajları ile sunulmalıdır.

İletişim
- Proje ile ilgili geri bildirim veya sorular için benimle iletişime geçebilirsiniz.
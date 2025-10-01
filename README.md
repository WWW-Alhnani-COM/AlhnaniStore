# متجر الحناني - تطبيق متجر إلكتروني

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-Server-green?logo=node.js&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)

<br>
<div align="center">
  <img src="https://via.placeholder.com/150x150.png?text=App+Icon" alt="App Icon" width="100" height="100">
</div>
<br>

<p align="center">
  <strong>متجر الحناني</strong> هو تطبيق متجر إلكتروني مفتوح المصدر مبني باستخدام <a href="https://flutter.dev/">Flutter</a> و <a href="https://nodejs.org/">Node.js</a>. يتيح للمستخدمين تصفح المنتجات، عرض التفاصيل، التقييم، وإدارة سلة التسوق.
</p>

## 📋 الجدول

- [المميزات](#-المميزات)
- [الهياكل](#-الهياكل)
- [الإعداد](#-الإعداد)
  - [متطلبات النظام](#متطلبات-النظام)
  - [الإعداد المحلي](#الإعداد-المحلي)
- [الاستخدام](#-الاستخدام)
- [الواجهة البرمجية](#-الواجهة-البرمجية-api)
- [المساهمة](#-المساهمة)
- [الترخيص](#-الترخيص)
- [الاتصال](#-الاتصال)

## ✨ المميزات

- **واجهة مستخدم متجاوبة:** تصميم يناسب جميع أحجام الشاشات (الهواتف، الأجهزة اللوحية، الحواسيب).
- **نظام التصميم المخصص:** استخدام `DesignSystem` لضمان الاتساق البصري.
- **التنقل المتجاوب:** مكونات تتكيف مع حجم الشاشة باستخدام `Responsive` Helper.
- **إدارة الحالة:** استخدام `Provider` للتحكم في حالة التطبيق (مثل سلة التسوق).
- **عرض المنتجات:** تصفح المنتجات حسب الفئة، البحث، والتصنيف.
- **Cart Management:** إضافة/إزالة/تحديث العناصر في السلة.
- **نظام التقييم:** عرض وتقييم المنتجات.
- **API متكامل:** تواصل مع سيرفر Node.js لجلب البيانات وتحديثها.

## 🏗️ الهياكل

### هيكل المشروع (Frontend - Flutter)

profile
Qwen3-Coder
الساعة:الدقائق صباحا/مساء
بالطبع! إليك النص الكامل لملف README.md الذي يمكنك نسخه ولصقه مباشرة في GitHub:

markdown


1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
⌄
⌄
⌄
⌄
⌄
⌄
⌄
⌄
⌄
# متجر الحناني - تطبيق متجر إلكتروني

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-Server-green?logo=node.js&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)

<br>
<div align="center">
  <img src="https://via.placeholder.com/150x150.png?text=App+Icon" alt="App Icon" width="100" height="100">
</div>
<br>

<p align="center">
  <strong>متجر الحناني</strong> هو تطبيق متجر إلكتروني مفتوح المصدر مبني باستخدام <a href="https://flutter.dev/">Flutter</a> و <a href="https://nodejs.org/">Node.js</a>. يتيح للمستخدمين تصفح المنتجات، عرض التفاصيل، التقييم، وإدارة سلة التسوق.
</p>

## 📋 الجدول

- [المميزات](#-المميزات)
- [الهياكل](#-الهياكل)
- [الإعداد](#-الإعداد)
  - [متطلبات النظام](#متطلبات-النظام)
  - [الإعداد المحلي](#الإعداد-المحلي)
- [الاستخدام](#-الاستخدام)
- [الواجهة البرمجية](#-الواجهة-البرمجية-api)
- [المساهمة](#-المساهمة)
- [الترخيص](#-الترخيص)
- [الاتصال](#-الاتصال)

## ✨ المميزات

- **واجهة مستخدم متجاوبة:** تصميم يناسب جميع أحجام الشاشات (الهواتف، الأجهزة اللوحية، الحواسيب).
- **نظام التصميم المخصص:** استخدام `DesignSystem` لضمان الاتساق البصري.
- **التنقل المتجاوب:** مكونات تتكيف مع حجم الشاشة باستخدام `Responsive` Helper.
- **إدارة الحالة:** استخدام `Provider` للتحكم في حالة التطبيق (مثل سلة التسوق).
- **عرض المنتجات:** تصفح المنتجات حسب الفئة، البحث، والتصنيف.
- **Cart Management:** إضافة/إزالة/تحديث العناصر في السلة.
- **نظام التقييم:** عرض وتقييم المنتجات.
- **API متكامل:** تواصل مع سيرفر Node.js لجلب البيانات وتحديثها.

## 🏗️ الهياكل

### هيكل المشروع (Frontend - Flutter)
```python
alhnani_store/
├── lib/
│ ├── main.dart # نقطة البداية للتطبيق
│ ├── models/ # نماذج البيانات (مثل Product, CartItem)
│ ├── providers/ # مزودي الحالة (مثل CartProvider)
│ ├── screens/ # شاشات التطبيق (مثل ProductList, ProductDetail)
│ ├── services/ # خدمات API (مثل ApiService)
│ ├── utils/ # أدوات مساعدة (مثل DesignSystem, Responsive, DebugHelper)
│ └── widgets/ # مكونات واجهة قابلة لإعادة الاستخدام (مثل ProductCard, AppButton)
├── assets/
│ ├── images/ # صور الأصول (مثل شعار التطبيق)
│ └── fonts/ # خطوط مخصصة (اختياري)
├── test/
├── pubspec.yaml # اعتماديات المشروع وبياناته
└── README.md # هذا الملف

```

### هيكل المشروع (Backend - Node.js)
```bash
store_api/
├── server.js # نقطة البداية للسيرفر
├── package.json # اعتماديات Node.js وبيانات المشروع
├── .env # المتغيرات البيئية (غير مرفقة في Git)
└── README.md # تعليمات سيرفر Node.js (اختياري)
```


## ⚙️ الإعداد

### متطلبات النظام

- **Flutter SDK:** [التنصيب](https://docs.flutter.dev/get-started/install)
- **Git:** [التنصيب](https://git-scm.com/downloads)
- **Node.js & npm:** [التنصيب](https://nodejs.org/en/download/) (لتشغيل السيرفر)
- **Android Studio / Xcode:** (لإنشاء أجهزة افتراضية أو لربط جهاز فعلي)

### الإعداد المحلي

1. **استنساخ المشروع:**

   ```bash
   git clone https://github.com/your-username/alhnani_store.git
   cd alhnani_store
تثبيت اعتماديات Flutter
```bash
flutter pub get

```
تشغيل السيرفر Node.js:
انتقل إلى مجلد السيرفر (إذا كان في مجلد منفصل أو قم بإنشائه):
```bash
cd path/to/your/store_api/
```
نسخ الملف server.js (الذي قمنا بتعديله) إلى هذا المجلد.
تثبيت اعتماديات Node.js
```bash
npm install express cors dotenv

```
تشغيل السيرفر:
```bash
node server.js
```

ملاحظة: تأكد من أن عنوان السيرفر (مثلاً http://localhost:5000) مطابق للعنوان المستخدم في ApiService في تطبيق Flutter.
تشغيل تطبيق Flutter:
من داخل مجلد alhnani_store

```bash
flutter run
```
🚀 الاستخدام
الصفحة الرئيسية: عرض المنتجات، التصفح حسب الفئة.
تفاصيل المنتج: عرض صور، وصف، تقييمات، وسعر المنتج.
السلة: عرض العناصر المضافة، تعديل الكمية، إزالة العناصر.
الشريط السفلي: التنقل بين الأقسام (الرئيسية، المنتجات، السلة، الملف الشخصي).
🌐 الواجهة البرمجية (API)
يستخدم التطبيق واجهة برمجية RESTful مبنية على Node.js.

النهايات (Endpoints) الرئيسية
GET /api/health - التحقق من حالة السيرفر.
GET /api/products - جلب جميع المنتجات (مع التصفية والصفحة).
GET /api/products/featured - جلب المنتجات المميزة.
GET /api/categories - جلب جميع الفئات.
GET /api/products/:id - جلب تفاصيل منتج محدد.
GET /api/products/category/:category - جلب منتجات حسب الفئة.
مثال على استجابة المنتج
```json
{
  "success": true,
  "data": {
    "_id": "1",
    "name": "هاتف سامسونج جالاكسي",
    "description": "هاتف ذكي بشاشة 6.5 بوصة وكاميرا متطورة",
    "price": 1200,
    "originalPrice": 1500,
    "images": ["https://example.com/path/to/samsung-galaxy.jpg"],
    "category": "electronics",
    "stock": 15,
    "ratings": {
      "average": 4.5,
      "count": 128
    },
    "features": ["شاشة AMOLED", "128GB تخزين", "8GB RAM"],
    "tags": ["هاتف", "سامسونج", "ذكي"],
    "isActive": true,
    "createdAt": "2023-10-27T10:00:00.000Z",
    "updatedAt": "2023-10-27T10:00:00.000Z"
  }
}
```



🤝 المساهمة
contributions موضع ترحيب! يرجى اتباع هذه الخطوات:

اصنع فرعًا (git checkout -b feature/AmazingFeature).
قم بعمل تعديلاتك (git commit -m 'Add some AmazingFeature').
ارفع الفرع (git push origin feature/AmazingFeature).
افتح طلب سحب (Pull Request).
📄 الترخيص
تم ترخيص هذا المشروع بموجب MIT License . راجع ملف LICENSE للحصول على التفاصيل.

📬 الاتصال
محمد الحناني  : Email - GitHub

<p align="center">
Made with ❤️ using Flutter
</p>
```

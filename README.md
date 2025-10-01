
```markdown
# متجر الحناني - تطبيق متجر إلكتروني

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-Server-green?logo=node.js&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)

<p align="center">
  <img src="assets/images/app_icon.png" alt="App Icon" width="100" height="100">
</p>

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

```
alhnani_store/
├── lib/
│   ├── main.dart                 # نقطة البداية للتطبيق
│   ├── models/                   # نماذج البيانات (مثل Product, CartItem)
│   ├── providers/                # مزودي الحالة (مثل CartProvider)
│   ├── screens/                  # شاشات التطبيق (مثل ProductList, ProductDetail)
│   ├── services/                 # خدمات API (مثل ApiService)
│   ├── utils/                    # أدوات مساعدة (مثل DesignSystem, Responsive, DebugHelper)
│   └── widgets/                  # مكونات واجهة قابلة لإعادة الاستخدام (مثل ProductCard, AppButton)
├── assets/
│   ├── images/                   # صور الأصول (مثل شعار التطبيق)
│   └── fonts/                    # خطوط مخصصة (اختياري)
├── test/
├── pubspec.yaml                  # اعتماديات المشروع وبياناته
└── README.md                     # هذا الملف
```

### هيكل المشروع (Backend - Node.js)

```
store_api/
├── server.js                     # نقطة البداية للسيرفر
├── package.json                  # اعتماديات Node.js وبيانات المشروع
├── .env                          # المتغيرات البيئية (غير مرفقة في Git)
└── README.md                     # تعليمات سيرفر Node.js (اختياري)
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
   ```

2. **تثبيت اعتماديات Flutter:**

   ```bash
   flutter pub get
   ```

3. **تشغيل السيرفر Node.js:**

   - انتقل إلى مجلد السيرفر (إذا كان في مجلد منفصل أو قم بإنشائه):
     ```bash
     cd path/to/your/store_api/
     ```
   - نسخ الملف `server.js` (الذي قمنا بتعديله) إلى هذا المجلد.
   - تثبيت اعتماديات Node.js:
     ```bash
     npm install express cors dotenv
     ```
   - تشغيل السيرفر:
     ```bash
     node server.js
     ```
   - **ملاحظة:** تأكد من أن عنوان السيرفر (مثلاً `http://localhost:5000`) مطابق للعنوان المستخدم في `ApiService` في تطبيق Flutter.

4. **تشغيل تطبيق Flutter:**

   - من داخل مجلد `alhnani_store`:
     ```bash
     flutter run
     ```

## 🚀 الاستخدام

- **الصفحة الرئيسية:** عرض المنتجات، التصفح حسب الفئة.
- **تفاصيل المنتج:** عرض صور، وصف، تقييمات، وسعر المنتج.
- **السلة:** عرض العناصر المضافة، تعديل الكمية، إزالة العناصر.
- **الشريط السفلي:** التنقل بين الأقسام (الرئيسية، المنتجات، السلة، الملف الشخصي).

## 🌐 الواجهة البرمجية (API)

يستخدم التطبيق واجهة برمجية RESTful مبنية على Node.js.

### النهايات (Endpoints) الرئيسية

- `GET /api/health` - التحقق من حالة السيرفر.
- `GET /api/products` - جلب جميع المنتجات (مع التصفية والصفحة).
- `GET /api/products/featured` - جلب المنتجات المميزة.
- `GET /api/categories` - جلب جميع الفئات.
- `GET /api/products/:id` - جلب تفاصيل منتج محدد.
- `GET /api/products/category/:category` - جلب منتجات حسب الفئة.

### مثال على استجابة المنتج

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

## 🤝 المساهمة

 contributions موضع ترحيب! يرجى اتباع هذه الخطوات:

1. اصنع فرعًا (`git checkout -b feature/AmazingFeature`).
2. قم بعمل تعديلاتك (`git commit -m 'Add some AmazingFeature'`).
3. ارفع الفرع (`git push origin feature/AmazingFeature`).
4. افتح طلب سحب (Pull Request).

## 📄 الترخيص

تم ترخيص هذا المشروع بموجب [MIT License](https://choosealicense.com/licenses/mit/). راجع ملف [LICENSE](LICENSE) للحصول على التفاصيل.

## 📬 الاتصال

- **Ahmed ALsharabi** - [Email](mailto:your.email@example.com) - [GitHub](https://github.com/your-username)


---

<p align="center">
Made with ❤️ using Flutter
</p>

```

**ملاحظات:**

1.  **`assets/images/app_icon.png`:** قم بوضع صورة رمزية (App Icon) داخل مجلد `assets/images/` وقم بتحديث الرابط في `README.md`.
2.  **`your-username`:** استبدل هذا بـ اسم المستخدم الخاص بك على GitHub.
3.  **`your.email@example.com`:** استبدل هذا ببريدك الإلكتروني.
4.  **`path/to/your/store_api/`:** قم بتحديث هذا المسار حسب هيكلة مشروعك الفعلية.
5.  **`ApiService`:** تأكد من أن عنوان API في `ApiService` (مثلاً `http://localhost:5000/api`) مطابق لعنوان السيرفر.
6.  **`LICENSE` file:** قم بإنشاء ملف `LICENSE` في جذر المشروع وادخل فيه نص ترخيص MIT.
7.  **`package.json`:** إذا كان السيرفر Node.js في نفس المشروع أو في مشروع منفصل، قم بإنشاء `package.json` وتضمين `express`, `cors`, `dotenv` كاعتماديات.

هذا الملف `README.md` يوفر نظرة عامة شاملة ومهنية على مشروعك، مما يجعله جذابًا للمستخدمين والمساهمين المحتملين.

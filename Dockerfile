# استخدم صورة Python كأساس
FROM python:3.8-slim

# تعيين دليل العمل
WORKDIR /app

# نسخ الملفات المطلوبة
COPY requirements.txt .

# تثبيت الاعتماديات
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي الملفات
COPY . .

# أمر تشغيل التطبيق
CMD ["python", "your_script.py"]

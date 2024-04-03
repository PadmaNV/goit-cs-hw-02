#!/bin/bash

# Масив з URL вебсайтів
websites=("https://www.google.com" "https://facebook.com" "https://twitter.com")

# Назва файлу логів
log_file="website_status.log"

# Перевірка доступності кожного сайту та запис результатів у файл логів
for site in "${websites[@]}"; do
    if curl -s -L --head --request GET -w "%{http_code}\n" "$site" | grep "200 OK" > /dev/null; then
        echo "$site is UP" >> "$log_file"
    else
        echo "$site is DOWN" >> "$log_file"

    fi
done

# Вивід повідомлення про запис результатів у файл логів
echo "Результати перевірки доступності вебсайтів записані у файл: $log_file"

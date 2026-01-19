# Задание B1: "Простой скрипт-помощник" (Bash)

1. Скрипт содержится в `script.sh`.
2. Даем разрешение на запуск скрипта `chmod +x ./script.sh`.
3. Для того чтобы протестировать корректность работы скрипта создадим тестовые данные 
```bash
mkdir -p test && cd test && \
touch recent.log && \
touch -d "1 day ago" day1.log && \
touch -d "2 days ago" day2.log && \
touch -d "5 days ago" day5.log && \
touch -d "10 days ago" day10.log && \
touch -d "30 days ago" day30.log 
```


#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Справка по использованию: $0"
    echo "первый аргумент - путь к директории /path/to/logs"
    echo "второй аргумент - количество дней N"
    echo "Исполнение: скрипт выводит список файлов с расширением .log"
    echo "При вводе 'y' - удаляет, при 'n' - завершает работу."
    exit 1
fi

dir="$1"
days="$2"

# Находим файлы .log старше N дней
files=$(find "$dir" -name "*.log" -type f -mtime "+$days")

if [ -z "$files" ]; then
    echo "Файлы не найдены"
    exit 0
fi

echo "Найдены файлы для удаления:"
echo "$files"
echo ""
read -p "Удалить эти файлы? (y/n): " answer

if [ "$answer" = "y" ]; then
    echo "$files" | xargs rm -f
    echo "Файлы удалены"
fi

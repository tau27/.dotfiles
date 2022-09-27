#!/bin/bash

# Завершить текущие экземпляры polybar
kill -q polybar

# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск Polybar со стандартным расположением конфигурационного файла в ~/.config/polybar/config
polybar susbar &

echo "Polybar загрузился..."

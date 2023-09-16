#!/bin/bash
echo -e '\n'

print_label(){
  # Отрисовываем строку с текстом в центре квадрата
  echo -n "|"
  local text_length=${#text}
  local padding=$(( (width - text_length) / 2 ))
  for ((i = 0; i < padding; i++)); do
    echo -n " "
  done
  echo -n "$text"
  for ((i = padding + text_length; i < width - 2; i++)); do
    echo -n " "
  done
  echo "|"
}

draw_square() {
  local width=50  # Ширина квадрата
  local height=10 # Высота квадрата
  local text="Лабораторная работа #1" # Текст для вывода в центре квадрата

  # Отрисовываем верхнюю горизонтальную линию
  for ((i = 0; i < width; i++)); do
    echo -n "-"
  done
  echo ""

  # Отрисовываем боковые линии и пустое пространство внутри
  for ((j = 0; j < height; j++)); do
    if [[ $j -eq $(( (height - 2) / 2 )) ]]; then
      print_label
      continue
    fi
    echo -n "|"
    for ((i = 0; i < width - 2; i++)); do
      echo -n " "
    done
    echo "|"
  done



  # Отрисовываем нижнюю горизонтальную линию
  for ((i = 0; i < width; i++)); do
    echo -n "-"
  done
  echo ""
}

draw_square
echo -e '\n'
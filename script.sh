#!/bin/bash

# Переменная для домашней директории
user_home="$(cd "$(dirname "$0")" && pwd)"


bash greeting_table.sh || exit

# 1) Создание файлов и папок
# shellcheck disable=SC2028
echo -e "1) Создать приведенное в варианте дерево каталогов и файлов с содержимым. В качестве корня дерева использовать каталог lab0 своего домашнего каталога \n \n \n"

# Создание файла chingling4
touch "$user_home/chingling4"

# Создание директории garchomp0 и переход в нее
mkdir "$user_home/garchomp0"
cd "$user_home/garchomp0" || exit

# Создание файлов внутри garchomp0
touch spheal
touch lillipup
touch nidorino
touch bayleef

# Создание директорий spearow и jynx
mkdir spearow
mkdir jynx

# Переход обратно в директорию
cd "$user_home" || exit

# Создание файлов lucari09 и magneton4
touch lucari09
touch magneton4

# Создание директории pidgeotto6 и переход в нее
mkdir pidgeotto6
cd "$user_home/pidgeotto6" || exit

# Создание файлов внутри pidgeotto6
touch purugly
touch quilava
touch pawniard
touch cradily
touch tepig

# Создание директории skuntank3 и переход в нее
cd "$user_home" || exit
mkdir skuntank3
cd "$user_home/skuntank3" || exit

# Создание директорий внутри skuntank3
mkdir treecko
mkdir chingling
mkdir zebstrika
mkdir pidove


# Редактирование файлов


# shellcheck disable=SC2028
echo "Ходы Bind Gravity Heal Bell Helping Hand Icy Wind Knock \n
Off Last Resort Magic Coat Recycle Role Play Rollout Shock Wave Signal \n
Beam Skill Swap Sleep Talk Snatch Snore Swift Trick Uproar Zen \n" > chingling4
echo "Тип покемона ICE WATER" > spheal
echo "Тип диеты" > lillipup
# shellcheck disable=SC2028
echo "Способности Focus Energy Double Kick Poison Sting \n
Fury Attack Horn Attack Helping Hand Toxic Spikes Flatter Poison Jab \n
Captivate Horn Drill bayleef: \n
Тип покемона GRASS" > nidorino
# shellcheck disable=SC2028
echo "Возможности Overland=8 Surface=6 Jump=4 Power=4 \n
Intelligence=4 Aura=0 magneton4: \n
Возможности Sky=8 Power=3 \n
Intelligence=3 Magnetic=0 Sinker=0 purugly: \n
Развитые способности Keen" > lucario9
echo "Тип покемона FIRE NONE" > quilava
# shellcheck disable=SC2028
echo "Способности
Dark Art Unbreakable Defiant Inner Focus cradily: \n
Возможности \n
Overland=6 Surface=5 Underwater=7 Jump=4 Power=3 Intelligence=4 \n
Gilled=0 tepig: \n
satk=5 sdef=5 spd=5" > pawniard

# 2) Изменение прав доступа
# shellcheck disable=SC2028
echo -e "2) Установить согласно заданию права на файлы и каталоги.  \n \n \n"
cd "$user_home/skuntank3" || exit
#chingling4: права 404
chmod 404 chingling4
#lucario9: ---rw----
chmod u=,g=rw,o= lucario9
#treecko: rwxr-x-w-
chmod 732 treecko
#chingling: -wxrw--wx
chmod 632 chingling
#zebstrika: права 307
chmod 307 zebstrika
#pidove: владелец должен записывать директорию и переходить в нее; группа-владелец должна только переходить в директорию; остальные пользователи должны записывать директорию.
chmod u=wx,g=x,o=wx pidove
#lillipup: права 404
chmod 404 lillipup


cd "$user_home/garchomp0" || exit
#spearow: -wxrwxr-x
chmod 775 spearow
#spheal: ------r--
chmod u=r,g=,o=r spheal
#nidorino: владелец должен читать и записывать файл; группа-владелец должна читать файл; остальные пользователи должны не иметь никаких прав
chmod u=rw,g=r,o= nidorino
#bayleef: владелец должен не иметь никаких прав; группа-владелец должна читать файл; остальные пользователи должны читать файл
chmod u=,g=r,o=r bayleef
#jynx: -wxrw---x
chmod 630 jynx


cd "$user_home/pidgeotto6" || exit
#purugly: права 404
chmod 404 purugly
#quilava: владелец должен не иметь никаких прав; группа-владелец должна читать файл; остальные пользователи должны читать и записывать файл
chmod u=,g=r,o=rw quilava
#pawniard: права 640
chmod 640 pawniard
#cradily: права 400
chmod 400 cradily
#tepig: права 046
chmod 046 tepig

cd "$user_home" || exit
#garchomp0: права 307
chmod 307 garchomp0
#magneton4: r--------
chmod u=r,g=,o= magneton4
#pidgeotto6: права 751
chmod 751 pidgeotto6
#skuntank3: rwxrw-r--
chmod 764 skuntank3

# Для дальнейшей работы
# shellcheck disable=SC2035
chmod -R 777 *

# 3) Ссылки
echo -e "3) Скопировать часть дерева и создать ссылки внутри дерева  \n \n \n"

# Копирование файлов и директории
# Переход в директорию pidgeotto6 в переменной user_home. Если не удалось перейти, завершить скрипт.
cd "$user_home/pidgeotto6" || exit
# Копирование файлов quilava и purugly в файл magneton4_28 в переменной user_home
cp quilava purugly > "$user_home/magneton4_28"
# Переход в директорию skuntank3 в переменной user_home. Если не удалось перейти, завершить скрипт.
cd "$user_home/skuntank3" || exit
# Создание символической ссылки chingling4 в директории pidgeotto6 с именем quilavachingling

ln chingling4 "$user_home/pidgeotto6/quilavachingling"
# Создание символической ссылки pidgeotto6 в директории Copy_3
ln -s ../pidgeotto6 "$user_home/Copy_3"
# Рекурсивное копирование директории pidgeotto6 в garchomp0/jynx
cp -r "$user_home/pidgeotto6" "$user_home/garchomp0/jynx/"
# Переход в директорию user_home. Если не удалось перейти, завершить скрипт.
cd "$user_home/" || exit
# Копирование файла magneton4 в директорию tepigmagneton внутри pidgeotto6
mkdir tepigmagneton
cp magneton4 "$user_home/pidgeotto6/tepigmagneton"
# Создание символической ссылки ../../magneton4 в директории pidgeotto6 с именем cradilymagneton
cd "$user_home/pidgeotto6/" || exit
ln -s ../../magneton4 "$user_home/pidgeotto6/cradilymagneton"
# Копирование файла magneton4 в директорию spearow
cd "$user_home" || exit
cp magneton4 "$user_home/garchomp0/spearow/"

# 4) Поиск и вывод информации
# shellcheck disable=SC2028
echo -e "4) Поиск и фильтрацию файлов, каталогов и содержащихся в них данных.  \n \n \n"
cd "$user_home" || exit
mkdir tmp
touch error.log
touch results.log
cd "$user_home" || exit

# find  -type f - это команда find, которая будет искать файлы в директории.
# -exec ls -l {} + - это фрагмент, который использует команду ls -l для вывода атрибутов файлов, найденных командой find. Файлы передаются в ls -l через {}. + в конце обеспечивает эффективное выполнение ls сразу для нескольких файлов.
# 2>/tmp/error.log - это фрагмент, который перенаправляет стандартный вывод ошибок (stderr) в файл /tmp/error.log, чтобы перехватить ошибки доступа.
# sort -k5n - это команда sort, которая сортирует строки по пятому полю (размеру файла) в числовом порядке (по возрастанию).
find "$user_home/garchomp0" -type f -exec ls -l {} + 2>tmp/error.log | sort -k5n >> "$user_home/tmp/results.log"


# grep -n -r '.*g$' - это команда grep, которая будет искать строки, содержащие 'g' в конце имени файла, рекурсивно в директории. Опция -n добавляет номера строк, а -r выполняет поиск рекурсивно.
# sort -t: -k2,2r - это команда sort, которая сортирует строки в формате "номер строки:содержимое" по второму полю (имени файла) в обратном порядке (z->a). Опция -t: указывает, что разделитель полей - это двоеточие.
grep -n -r '.*g$' "$user_home/" --exclude="$user_home/pidgeotto6/cradilymagneton" --exclude=Copy_3 | sort -t: -k2,2r >> "$user_home/tmp/results.log"



# find  -type f -name 'c*' - это команда find, которая ищет файлы в директории lab0, удовлетворяющие условиям: тип файла должен быть обычным (-type f) и имя файла должно начинаться с 'c' (-name 'c*').
# -exec wc -c {} \; - это фрагмент, который использует команду wc -c для подсчета количества символов в каждом найденном файле. {} заменяется именем файла, и команда завершается символом ;.
# sort -n - это команда sort, которая сортирует вывод по возрастанию количества символов. Опция -n указывает, что сортировка должна быть числовой.
find "$user_home/" -type f -name 'c*' -exec wc -c {} \; | sort -n >> "$user_home/tmp/results.log"


# find  -type f -name '*g' - это команда find, которая ищет файлы в директории lab0, удовлетворяющие условиям: тип файла должен быть обычным (-type f) и имя файла должно заканчиваться на символ 'g' (-name '*g').
# -exec ls -lt {} \; - это фрагмент, который использует команду ls -lt для вывода атрибутов файлов, найденных командой find. Опция -l включает подробный режим вывода, а -t сортирует файлы по времени доступа. Файлы передаются в ls -lt через {}.
# 2>/tmp/error.log - это фрагмент, который перенаправляет стандартный вывод ошибок (stderr) в файл /tmp/error.log, чтобы перехватить ошибки доступа.
# head -n 3 - это команда head, которая выводит первые 3 строки списка, то есть три последних элемента.
find "$user_home/" -type f -name '*g' -exec ls -lt {} \; 2>tmp/error.log | head -n 3 >> "$user_home/tmp/results.log"


# find  -type f - это команда find, которая ищет файлы в директории lab0, удовлетворяющие условию, что тип файла должен быть обычным (-type f).
# -exec ls -lt {} \; - это фрагмент, который использует команду ls -lt для вывода атрибутов файлов, найденных командой find. Опция -l включает подробный режим вывода, а -t сортирует файлы по времени модификации. Файлы передаются в ls -lt через {}.
# 2>/tmp/error.log - это фрагмент, который перенаправляет стандартный вывод ошибок (stderr) в файл /tmp/error.log, чтобы перехватить ошибки доступа.
# head -n 4 - это команда head, которая выводит первые 4 строки списка, то есть четыре первых элемента.
find "$user_home/" -type f -exec ls -lt {} \; 2>tmp/error.log | head -n 4 >> "$user_home/tmp/results.log"

# 5) Удаление файлов и директорий
# shellcheck disable=SC2028
echo -e "5) Выполнить удаление файлов и каталогов.  \n \n \n"
cd "$user_home/skuntank3" || exit

rm -r zebstrika
cd "$user_home/pidgeotto6" || exit
rm tepig
rm cradilymagneton
rm -r quilavachingling
cd "$user_home" || exit
rm magneton4
rm -r "garchomp0"

echo -e "6) Итого \n"

find "$user_home" -type d -exec ls -1R {} \;





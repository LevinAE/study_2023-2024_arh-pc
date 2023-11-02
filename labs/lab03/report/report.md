---
## Front matter
title: "Лабороторная работа №3"
subtitle: "Простейший вариант"
author: "Рогозин Игорь Андреевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Задание

В соответствующем каталоге (lab02) сделайте отчёт по лабораторной работе No 2 в формате
Markdown. В качестве отчёта необходимо предоставить отчёты в 3 форматах: pdf, docx
и md. Загрузите файлы на github.

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Чтобы создать заголовок, используйте знак #, например:
(# This is heading 1)
(## This is heading 2)
(### This is heading 3)
(#### This is heading 4)
Чтобы задать для текста полужирное начертание, заключите его в двойные звездочки:
This text is (**bold**).
Чтобы задать для текста курсивное начертание, заключите его в одинарные звездочки:
This text is (*italic*).
Чтобы задать для текста полужирное и курсивное начертание, заключите его в тройные
звездочки:
This is text is both (***bold and italic***).
Блоки цитирования создаются с помощью символа >:
> The drought had lasted now for ten million years, and the reign of the
terrible lizards had long since ended. Here on the Equator, in the
continent which would one day be known as Africa, the battle for existence
had reached a new climax of ferocity, and the victor was not yet in sight.
In this barren and desiccated land, only the small or the swift or the
fierce could flourish, or even hope to survive.
↪
↪
↪
↪
↪
Упорядоченный список можно отформатировать с помощью соответствующих цифр:
23 Демидова А. В.
Архитектура ЭВМ
1. First instruction
1. Sub-instruction
1. Sub-instruction
1. Second instruction
Чтобы вложить один список в другой, добавьте отступ для элементов дочернего списка:
1. First instruction
1. Second instruction
1. Third instruction
Неупорядоченный (маркированный) список можно отформатировать с помощью звездо-
чек или тире:
* List item 1
* List item 2
* List item 3
Чтобы вложить один список в другой, добавьте отступ для элементов дочернего списка:
- List item 1
- List item A
- List item B
- List item 2
Синтаксис Markdown для встроенной ссылки состоит из части [link text], представляю-
щей текст гиперссылки, и части (file-name.md) – URL-адреса или имени файла, на который
дается ссылка:
[link text](file-name.md)
или
[link text](http://example.com/ "Необязательная подсказка")
Markdown поддерживает как встраивание фрагментов кода в предложение, так и их разме-
щение между предложениями в виде отдельных огражденных блоков. Огражденные блоки
кода — это простой способ выделить синтаксис для фрагментов кода. Общий формат ограж-
денных блоков кода:
``` language
your code goes in here
```
Для компиляции отчетов по лабораторным работам предлагается использовать следую-
щий Makefile
FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))
LATEX_FORMAT =
FILTER = --filter pandoc-crossref
%.docx: %.md
-pandoc "$<" $(FILTER) -o "$@"
%.pdf: %.md
-pandoc "$<" $(LATEX_FORMAT) $(FILTER) -o "$@"
all: $(FILES)
@echo $(FILES)
clean:
-rm $(FILES) *~

# Выполнение лабораторной работы

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. @fig:001).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:001 width=70%}

1. Откройте терминал
![Рис.1 Терминал линукс](image/terminal.png){#fig:001 width=70%}

2. Перейдите в каталог курса сформированный при выполнении лабороторной работы №2
![Рис.2 Переход в каталог](image/cd1.png){#fig:001 width=70%}

Обновите локальный репозиторий, скачав изменения из удаленного репозитория с помо-
щью команды
![Рис.3 Выполнение команды git pull](image/gitp.png){#fig:001 width=70%}

3. Перейдите в каталог с шаблоном отчета по лабораторной работе №3
![Рис.3 Переход в каталог 2](image/cd2.png){#fig:001 width=70%}

4. Проведите компиляцию шаблона с использованием Makefile. Для этого введём команду
![Рис.3 Переход в каталог 2](image/make.png){#fig:001 width=70%}
Проверяем выполнение команды
![Рис.3 Переход в каталог 2](image/foldp.png){#fig:001 width=70%}

5. Удалите полученный файлы с использованием Makefile. Для этого введите команду
![Рис.3 Переход в каталог 2](image/makec.png){#fig:001 width=70%}
Проверяем выполнение команды
![Рис.3 Переход в каталог 2](image/foldm.png){#fig:001 width=70%}

6. Откройте файл report.md c помощью любого текстового редактора, например gedit
![Рис.3 Переход в каталог 2](image/gedit.png){#fig:001 width=70%}

7. Делаем отчет...
![Рис.3 Переход в каталог 2](image/reports.png){#fig:001 width=70%}

8. Загружаем файлы на github
![Рис.3 Переход в каталог 2](image/gith.png){#fig:001 width=70%}

#Задание для самостоятельной работы

1. В соответствующем каталоге сделайте отчёт по лабораторной работе No 2 в формате
Markdown. В качестве отчёта необходимо предоставить отчёты в 3 форматах: pdf, docx
и md.


2. Загрузите файлы на github.


# Выводы

Я научился делать отчёт лабороторной работы среде Markdown и загружать его на github.

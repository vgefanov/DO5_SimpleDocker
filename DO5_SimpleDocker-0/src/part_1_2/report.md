# DO5 Simple Docker

## Part 1. Готовый докер

    Взять официальный докер образ с nginx и выкачать его при помощи docker pull

![](../part_1_2/images/1-1.png)

    Проверить наличие докер образа через docker images

![](../part_1_2/images/1-2.png)

    Запустить докер образ через docker run -d [image_id|repository]

![](../part_1_2/images/1-3.png)

    Проверить, что образ запустился через docker ps

![](../part_1_2/images/1-4.png)

    Посмотреть информацию о контейнере через docker inspect [container_id|container_name]

![](../part_1_2/images/1-5.png)

    По выводу команды определить и поместить в отчёт размер контейнера

![](../part_1_2/images/1-6.png)

    список замапленных портов

![](../part_1_2/images/1-7.png)

     и ip контейнера

![](../part_1_2/images/1-8.png)

    Остановить докер образ через docker stop [container_id|container_name]

![](../part_1_2/images/1-9.png)

    Проверить, что образ остановился через docker ps

![](../part_1_2/images/1-10.png)

    Запустить докер с замапленными портами 80 и 443 на локальную машину через команду run

![](../part_1_2/images/1-11.png)

    Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx

![](../part_1_2/images/1-12.png)

    Перезапустить докер контейнер через docker restart [container_id|container_name]

![](../part_1_2/images/1-13.png)

    Проверить любым способом, что контейнер запустился

![](../part_1_2/images/1-14.png)

___

## Part 2. Операции с контейнером

    Прочитать конфигурационный файл nginx.conf внутри докер контейнера через команду exec

![](../part_1_2/images/2-1.png)

    Создать на локальной машине файл nginx.conf, настроить в нем по пути /status отдачу страницы статуса сервера nginx

![](../part_1_2/images/2-2.png)

    Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp

![](../part_1_2/images/2-3.png)

    Перезапустить nginx внутри докер образа через команду exec

![](../part_1_2/images/2-4.png)

    Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![](../part_1_2/images/2-5.png)

    Экспортировать контейнер в файл container.tar через команду export

![](../part_1_2/images/2-6.png)

    Остановить контейнер

![](../part_1_2/images/2-7.png)

    Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры

![](../part_1_2/images/2-8.png)

    Удалить остановленный контейнер

![](../part_1_2/images/2-13.png)

    Импортировать контейнер обратно через команду import

![](../part_1_2/images/2-9.png)

![](../part_1_2/images/2-10.png)

    Запустить импортированный контейнер

![](../part_1_2/images/2-11.png)

    Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx

![](../part_1_2/images/2-12.png)

---

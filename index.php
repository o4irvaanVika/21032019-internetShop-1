<?php
    // Привет всем разработчикам! Это главная страница проекта. Бездельники всё сломают(
    $title = 'главная страница';
    include $_SERVER['DOCUMENT_ROOT'] . '/modules/head.php';
    include $_SERVER['DOCUMENT_ROOT'] . '/modules/header.php';

    //  Просто изменение в файле
?>

    <body>
        <div class="wrapper">

            <section>
                <div class="main">
                    <h1>Новые поступления весны</h1>
                    <h2>Мы подготовили для Вас лучшие новинки сезона</h2>
                    <div class="button">посмотреть новинки</div>

                </div>
            </section>

            <section>

            </section>

            <section>
                <div class="info">

                    <h1>Будь всегда в курсе выгодных предложений</h1>
                    <h2>подписывайся и следи за новинками и выгодными предложениями</h2>

                    <form id="subscribe">
                        <input name="email" type="email" placeholder="E-mail">
                        <input type="submit" value="записаться">
                    </form>
                    <p>Некорректный e-mail.Попробуйте еще раз.</p>

                </div>
            </section>


        </div>

    </body>

    <?php include $_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php';?>
    <!-- <script src="/js/main.js"></script> -->
    <script>
        let form = document.getElementById('subscribe');

        form.addEventListener('submit', function(e) {
            // отменяем действие по умолчанию
            e.preventDefault();
            let email = document.querySelector('[name="email"]').value;

            let xhr = new XMLHttpRequest();
            xhr.open('GET', `/handlers/addSubscriber.php?email=${email}`); 
            xhr.send();

            xhr.addEventListener('load', function() {
                let data = JSON.parse(xhr.responseText);
                alert( data );
            });

        });
    </script>

    </html>
<?php
    include ($_SERVER['DOCUMENT_ROOT'] . '/config/config.php');

    $query = "SELECT * FROM `shop` ";
    $result = mysqli_query($link, $query);
    $allID = mysqli_num_rows($result);
?>

<!doctype html>
<html lang="ru">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Товары магазина</title>
  </head>
  <body>
    
    <div class="container ">
        <div class="row">
            <div class="col-12">
                <h1>Товары магазина</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-3 text-white">
                <nav class="nav flex-column">
                    <a class="nav-link active bg-primary text-white" href="#">Товары магазина</a>
                    <a class="nav-link" href="#">Заказы</a>
                    <a class="nav-link" href="#">Пользователи</a>
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Документация</a>
                </nav>
            </div>
            <div class="col-9 d-flex justify-content-between flex-wrap">
                <a href="/admin/addProduct" type="button" class="btn btn-success btn-lg btn-block text-white" style="margin-bottom: 40px;">Добавить новый товар</a>
                <?php while ($res = mysqli_fetch_assoc($result) ): ?>
                <div class="card" style="width: 14rem;">
                    <div style="background: url(/image/<?=$res['image']?>) center center / contain no-repeat; height: 200px;" class="card-img-top" alt="<?=$res['title']?>"></div>
                    <div class="card-body">
                        <h5 class="card-title"><?=$res['title']?></h5>
                        <p class="card-text"><?=$res['price']?> руб.</p>
                        <a href="#" class="btn btn-primary">изменить</a>
                    </div>
                </div>
                <?php endwhile; ?>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
<?php 
    include ($_SERVER['DOCUMENT_ROOT'] . '/config/config.php');
    include ($_SERVER['DOCUMENT_ROOT'] . '/modules/functions.php');

    d($_POST);
    d($_FILES);

    <a href="/pages/item?id=32">куртка синяя</a>

    $maxFileSize = 35000;
    $error = '';

    if ( !is_dir('pics/men/jackets') ) {
        mkdir('pics/men/jackets', '777', true);
    } else {
        echo 'папка уже существует<br><br>';
    }

    // подсчитываем количество отправленных изображений
    $fileCount = count($_FILES['pic']['name']);

    // циклом сохраняем изображения в папку
    for ( $i = 0; $i < $fileCount ; $i++ ) {

        if (checkMimeType($_FILES['pic']['type'][$i])) {
            
            if ($_FILES['pic']['size'][$i] < $maxFileSize) {

                $result = move_uploaded_file( $_FILES['pic']['tmp_name'][$i], 'images/' . $_FILES['pic']['name'][$i]);
        
                if ($result) {
                    $error .= "Файл \"{$_FILES['pic']['name'][$i]}\" успешно сохранен<br>";
                } else {
                    $error .= "Ошибка загрузки файла \"{$_FILES['pic']['name'][$i]}\"<br>";
                }
    
            } else {
                $error .= "Файл   слишком большой<br>";
            }

        } else {
            $error .= "Некорректный тип файла \"{$_FILES['pic']['type'][$i]}\" <br> ";
        
        }
    }

    echo $error;

?>
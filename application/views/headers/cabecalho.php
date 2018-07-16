<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Glasnost - Escola de Atividades Criativas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" media="screen" href="<?=base_url("css/glasnost.css")?>" />

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</head>

<body>

    <nav class="navbar rounded-0">
        <div class="container-fluid rounded-0">
            <div class="navbar-header">
                <a class="navbar-brand" href="<?=site_url('welcome/index')?>">
                    <div class="title">GLSNST</div>
                </a>
            </div>
            <?PHP if($this->session->userdata("usuario_logado")) : ?>
            <ul class="nav navbar-nav rounded-0">
                <li class="active">
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Cursos</a>
                </li>
                <li>
                    <a href="#">Meu Perfil</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<?=site_url('login/logout')?>">
                        <span class="glyphicon glyphicon-log-in"></span> Deslogar</a>
                </li>
            </ul>
            <?php endif ?>

            <?PHP if(! $this->session->userdata("usuario_logado")) : ?>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<?=site_url('login/formulario_cadastro')?>">
                        <span class="glyphicon glyphicon-user"></span> Registrar</a>
                </li>
                <li>
                    <a href="<?=site_url('login/formulario_login')?>">
                        <span class="glyphicon glyphicon-log-in"></span> Logar</a>
                </li>
            </ul>
            <?php endif ?>
        </div>
    </nav>
    <div class="container">
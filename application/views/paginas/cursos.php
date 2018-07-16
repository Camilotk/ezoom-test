<h1>Cursos</h1>
<table class="table">
<tr>
        <td>Nome</td>
        <td>Descrição</td>
        <td>Horas</td>
        <td>Deletar?</td>
        <td>Alterar?</td>
    </tr>
<?PHP foreach ($cursos as $curso) : ?>
    <tr>
        <td><?=$curso["nome"]?></td>
        <td><?= substr($curso["descricao"], 0, 70)?></td>
        <td><?=$curso["horas"]?></td>
        <td><a href="<?=base_url("")?>index.php/curso/deleta?id=<?=$curso["id_curso"]?>" class="btn btn-danger">deleta</td>
        <td><a href="<?=base_url("")?>index.php/curso/altera?id=<?=$curso["id_curso"]?>" class="btn btn-primary">altera</td>
    </tr>
<?PHP endforeach ?>

</table>

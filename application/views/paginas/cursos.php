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
        <td><?=$curso["descricao"]?></td>
        <td><?=$curso["horas"]?></td>
        <td><?=anchor("curso/deleta", "deleta", array("class" => "btn btn-danger"))?></td>
        <td><?=anchor("curso/altera", "altera", array("class" => "btn btn-primary"))?></td>
    </tr>
<?PHP endforeach ?>
</table>
<?=anchor("curso/novo", "Cadastrar um novo curso", array("class" => "btn btn-default"))?>
<br>
</table>

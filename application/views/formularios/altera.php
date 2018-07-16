<?PHP
echo form_open("curso/alterar");

echo form_label("Nome", "nome");
echo form_input(array(
    "name" => "nome",
    "id" => "nome",
    "class" => "form-control",
    "maxlength" => "45",
    "value" => $curso["nome_curso"]
));
echo form_label("Horas", "horas");
echo form_input(array(
    "name" => "horas",
    "id" => "horas",
    "class" => "form-control",
    "type" => "number",
    "value" => $curso["horas"]
));

?>

    <label for="professores">Professor</label>
    <select name="professores" id="professores" class="form-control">
        <?PHP foreach ($professores as $professor) : 
            if ($professor["matricula"] == $curso["id_professor"]) {
    ?>
        <option selected="selected" value="<?=$professor[" matricula "]?>">
            <?=$professor["nome"] . " " . $professor["sobrenome"]?>
        </option>
        <?PHP } else { ?>
        <option value="<?=$professor[" matricula "]?>">
            <?=$professor["nome"] . " " . $professor["sobrenome"]?>
        </option>
        <?PHP } ?>


        <?PHP endforeach ?>
    </select>
    <?PHP
echo form_label("Descrição", "descricao");
echo form_textarea(array(
    "name" => "descricao",
    "id" => "descricao",
    "class" => "form-control",
    "value" => $curso["descricao"]
));

echo "<br>";

echo form_button(array(
    "content" => "Alterar",
    "class" => "btn btn-primary",
    "type" => "submit"
));

echo form_hidden("id", $curso["id_curso"]);

echo form_close();
<?PHP
echo form_open("curso/cadastra");

echo form_label("Nome", "nome");
echo form_input(array(
    "name" => "nome",
    "id" => "nome",
    "class" => "form-control",
    "maxlength" => "45",
));
echo form_label("Horas", "horas");
echo form_input(array(
    "name" => "horas",
    "id" => "horas",
    "class" => "form-control",
    "type" => "number"
));

?>
<label for="professores">Professor</label>
<select name="professores" id="professores" class="form-control">
    <?PHP foreach ($professores as $professor) : ?>
      <option value="<?=$professor["matricula"]?>"><?=$professor["nome"] . " " . $professor["sobrenome"]?> </option>
    <?PHP endforeach ?>
</select>

<?PHP
echo form_label("Descrição", "descricao");
echo form_textarea(array(
    "name" => "descricao",
    "id" => "descricao",
    "class" => "form-control"
));
echo "<br>";
echo form_button(array(
    "content" => "Cadastrar",
    "class" => "btn btn-primary",
    "type" => "submit"
));
echo form_close();
<?PHP
echo form_open("curso/alterar");

echo form_label("Nome", "nome");
echo form_input(array(
    "name" => "nome",
    "id" => "nome",
    "class" => "form-control",
    "maxlength" => "45",
    "value" => $curso["nome"]
));
echo form_label("Horas", "horas");
echo form_input(array(
    "name" => "horas",
    "id" => "horas",
    "class" => "form-control",
    "type" => "number",
    "value" => $curso["horas"]
));
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
<?PHP
echo form_open("Login/registrar");

echo form_label("Nome", "nome");
echo form_input(array(
    "name" => "nome",
    "id" => "nome",
    "class" => "form-control",
    "maxlength" => "25"
));

echo form_label("Sobrenome", "sobrenome");
echo form_input(array(
    "name" => "sobrenome",
    "id" => "sobrenome",
    "class" => "form-control",
    "maxlength" => "25"
));

echo form_label("RG", "rg");
echo form_input(array(
    "name" => "rg",
    "id" => "rg",
    "class" => "form-control",
    "maxlength" => "9"
));

echo form_label("Data de Nascimento", "dt");
echo form_input(array(
    "name" => "dt",
    "id" => "dt",
    "class" => "form-control",
    "type" => "date"
));

echo form_label("Email", "email");
echo form_input(array(
    "name" => "email",
    "id" => "email",
    "class" => "form-control",
    "maxlength" => "90"
));

echo form_label("Senha", "senha");
echo form_password(array(
    "name" => "senha",
    "senha" => "senha",
    "class" => "form-control"
));

echo form_radio(array(
    'name' => 'sex',
    'id' => 'sex',
    'value' => 'M',
    'checked' => FALSE
));
echo form_label("Homem", "sex");

echo " ";

echo form_radio(array(
    'name' => 'sex',
    'id' => 'sex',
    'value' => 'F',
    'checked' => FALSE
));
echo form_label("Mulher", "sex");

echo "<br>";

echo form_button(array(
    "class" => "btn btn-primary",
    "content" => "Cadastrar"
));
echo form_close();
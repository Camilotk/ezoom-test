<h3>Formulário de Cadastro</h3>
<?PHP
echo form_open("login/registrar");

echo form_label("Nome", "nome");
echo form_input(array(
    "name" => "nome",
    "id" => "nome",
    "class" => "form-control",
    "maxlength" => "25",
));

echo form_label("Sobrenome", "sobrenome");
echo form_input(array(
    "name" => "sobrenome",
    "id" => "sobrenome",
    "class" => "form-control",
    "maxlength" => "25",
));

echo form_label("RG", "rg");
echo form_input(array(
    "name" => "rg",
    "id" => "rg",
    "class" => "form-control",
    "maxlength" => "9",
));

echo form_label("Data de Nascimento", "dt");
echo form_input(array(
    "name" => "dt",
    "id" => "dt",
    "class" => "form-control",
    "type" => "date",
));

echo form_radio(array(
    'name' => 'sex',
    'id' => 'sex',
    'value' => 'M',
    'checked' => FALSE,
));
echo form_label("Homem", "sex");

echo " ";

echo form_radio(array(
    'name' => 'sex',
    'id' => 'sex',
    'value' => 'F',
    'checked' => FALSE,
));
echo form_label("Mulher", "sex");

echo "<br>";
echo "<h3>E-mail e Senha</h3>";

echo form_label("Email", "email");
echo form_input(array(
    "name" => "email",
    "id" => "email",
    "class" => "form-control",
    "maxlength" => "90",
));

echo form_label("Senha", "senha");
echo form_password(array(
    "name" => "senha",
    "senha" => "senha",
    "class" => "form-control",
));

echo "<br>";
echo "<h3>Endereço e Telefone</h3>";

echo form_label("Endereço", "endereco");
echo form_input(array(
    "name" => "endereco",
    "id" => "endereco",
    "class" => "form-control",
    "maxlength" => "25",
));

echo form_dropdown('select',  array("Caxias do Sul", "São Paulo"), 'Caxias do Sul', 'class="form-control"');

echo form_label("Telefone", "telefone");
echo form_input(array(
    "name" => "telefone",
    "id" => "telefone",
    "class" => "form-control",
    "maxlength" => "25",
));

echo "<br>";

echo form_button(array(
    "class" => "btn btn-primary",
    "content" => "Cadastrar",
    "type" => "submit"
));

echo form_close();
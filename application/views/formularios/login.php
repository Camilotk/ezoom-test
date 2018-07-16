<?PHP
echo form_open("login/logar");

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

echo form_button(array(
    "class" => "btn btn-primary",
    "content" => "Login",
    "type" => "submit"
));
echo form_close();
# terraform_alura
Curso Terraform Alura</br>

Passo 1: Instalar o Terraform</br>
Site Oficial do Terraform: https://www.terraform.io/downloads.html</br>

Passo 2: Gerar um Par de Chaves SSH:
ssh-keygen -t rsa -b 2048 -f ~/.ssh/my-key-pair</br>
Este comando criará um par de chaves RSA de 2048 bits e salvará as chaves no arquivo </br>
~/.ssh/my-key-pair (ou em um caminho e nome de arquivo de sua escolha).

Adicionar uma Senha (Opcional):
Você pode adicionar uma senha à sua chave privada para aumentar a segurança:</br>
ssh-keygen -p -f ~/.ssh/my-key-pair

Na AWS:</br>
Passo 1: Acesse o Console da AWS.</br>
Passo 2: Navegue até "Services" > "EC2".</br>
Passo 3: No painel de navegação esquerdo, clique em "Key Pairs" sob a seção "Network & Security".
Clique em "Import Key Pair".</br>
Passo 4: Dê um nome ao seu par de chaves.</br>
Passo 5: No campo "Public Key Contents", cole o conteúdo do arquivo ~/.ssh/my-key-pair.pub.</br>

Você pode exibir o conteúdo da chave pública usando o comando:</br>
cat ~/.ssh/my-key-pair.pub</br>
Copie o texto resultante e cole-o no campo "Public Key Contents" no console da AWS.

Importante:
Guarde a chave privada (~/.ssh/my-key-pair) em um local seguro em seu computador.</br>
Nunca compartilhe sua chave privada com ninguém e mantenha-a protegida.
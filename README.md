# terraform_alura
Curso Terraform Alura

Passo 1: Instalar o Terraform
Site Oficial do Terraform: https://www.terraform.io/downloads.html

Passo 2: Gerar um Par de Chaves SSH:
ssh-keygen -t rsa -b 2048 -f ~/.ssh/my-key-pair
Este comando criará um par de chaves RSA de 2048 bits e salvará as chaves no arquivo ~/.ssh/my-key-pair (ou em um caminho e nome de arquivo de sua escolha).

Adicionar uma Senha (Opcional):
Você pode adicionar uma senha à sua chave privada para aumentar a segurança:
ssh-keygen -p -f ~/.ssh/my-key-pair

Na AWS:
Acesse o Console da AWS.
Navegue até "Services" > "EC2".
No painel de navegação esquerdo, clique em "Key Pairs" sob a seção "Network & Security".
Clique em "Import Key Pair".
Dê um nome ao seu par de chaves.
No campo "Public Key Contents", cole o conteúdo do arquivo ~/.ssh/my-key-pair.pub.

Você pode exibir o conteúdo da chave pública usando o comando:
cat ~/.ssh/my-key-pair.pub
Copie o texto resultante e cole-o no campo "Public Key Contents" no console da AWS.

Importante:
Guarde a chave privada (~/.ssh/my-key-pair) em um local seguro em seu computador. Nunca compartilhe sua chave privada com ninguém e mantenha-a protegida.

#para criar pastas e subpastas de uma vez
mkdir -p

#para criar varias pastas de uma vez coloque entre {}
mkdir -p senai-sc/{dev,multi,redes}

#E para criar as subpastas dentro das pastas use de novo as {}. se for criar só uma subpasta não coloque entre chaves
mkdir -p senai-sc/{dev/{1-semestre,2-semestre,3-semestre},multi/2-semestre,redes}

#Se quiser colocar uma subpasta na subpasta coloque a /
mkdir -p senai-sc/{dev/{1-semestre,2-semestre/prova,3-semestre},multi/2-semestre,redes/{1-semestre/script,2-semestre,3-semestre/script}}

#Comando para baixar um arquivo da internet [normalmente em http]
wget
#exemplo:
wget http://3.92.202.139/senai-sc.tar.gz

#programa utilizado no linux para juntar pastas e arquivos
tar
#compactar arquivos e pastas
gz ou gzip

#Comando para extrair um arquivo
tar -xf [nome do arquivo]

#Mesmo comando de cima mas esse avisa se ele foi baixado ou não
tar -xvf

#criar um arquivo com TAR sem compactação
tar -cvf [nome-do-arquivo-novo] [arquivo/pastas que quero compactar]

#Para poder ver o tamanho do arquivo de forma entendível
ls -lh

#Para juntar um arquivo ou pasta com tar e compactar no gzip deixando assim o arquivo menor
tar -cvzf [nome do arquivo novo] [arquivo/pasta a ser juntado]

#pasta onde ficam os logs do sistema
/var/log

#Armazena informações sobre logins do usuário / registro dos eventos do sistema
auth.log / syslog

#date - mostra a data
#more - visualiza o arquivo em paginas 
# | [pipe] - complementar um comando para usar mais de um ao mesmo tempo 
    ex: cat /var/log/auth.log | more 
#less - 'more' melhorado

#Para ver as 10 últimas linhas de um arquivo
tail

#Comando para ver o número de linhas de um arquivo
tail -n [numero de linhas desejadas] <arquivo desejado>

#Com o '-f' você podera monitorar as ações de um arquivo
tail -f

#Para visualizar as 10 primeiras linhas use
head

#Para filtrar as informações de um comando use 'grep', por exemplo cat [nome do arquivo] | grep [o que procurar]
cat /var/log/auth.log | grep 'jun 28'

#Adicione um '*' para subsitituir por qualquer valor
cat /var/log/auth.com | grep 'jun 28 16:*'

#Providencia uma conta de quantas linhas ele encontrou
grep -c

#Mostra o numero de linhas
grep -n

#Para reiniciar um serviço use (neste exemplo o serviço usado é o networking)
  systemctl restart networking
  
  #Para reiniciar o sistema operacional
  reboot
  
#Agora alguns comandos para mexer no VIM:
[esc ou CTRL + C] -> é um modo utilizado por comandos 
    : - para colocar os comandos 
        :set number  - faz uma contagem das linhas e elas aparecem com os numeros do lado      
        :help - para obter ajuda
        :colorscheme [thema] -> trocar as cores do editor
        :w - para salvar  
    :w [nome do novo arquivo] - para salvar o arquivo com um nome diferente 
    :q - sair do VIM 
    :wq - Salvar e sair
    :q! - força a saída (sai sem salvar) 
Alguns dos comandos são: 

    x - apagar algum caractere de texto 
    dw - Apagar a palavra aonde o cursor está 
    u - desfaz a última alteração
    ctrl + r -> refaz  
    d2w - apagar as duas palavras a partir do cursor 
    d$ - Apagar todos os textos a partir do cursor até o fim da linha     
    dd - apagar a linha inteira
    [2]dd - apaga duas ou mais linhas, apenas coloque o numero de linhas desejadas na frente do comando
    

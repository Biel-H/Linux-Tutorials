<!--ts-->
* [Usúarios e grupos no Linux](## Usuários-e-Grupos-no-Linux ##)
* [Tipos de arquivos e pastas](## Tipos-de-arquivos-e-pastas ##)
* [Criando um grupo](## Criar-um-grupo ##)
* [Alterações em grupos](#### ALTERAÇÕES-EM-GRUPOS ####)
<!--te-->
## Usuários e Grupos no Linux ##
Vamos começar relembrando alguns conceitos basicos, tudo no linux é salvo como um ARQUIVO.

```/etc/group```   -> _Arquivo que armazena os grupos do linux_

``` /etc/passwd```  -> _arquivo que armazena os Usuarios do linux_

``` /etc/shadow ``` -> _arquivo que armazena as senhas dos usuários no linux_

**(As senhas no linux são criptografadas por):**
- SHA-256 -> 256 bits 
- SHA-512 -> 512 bits

## Tipos de arquivos e pastas ##
**\-**   -> arquivo 

**d** -> pasta-diretorio

**l** -> link/atalho

**b** -> bloco de notas 

**c** -> caractere 

**s** -> socket [comunicação entre processos]

**_Permissões podem ser:_**

**r** -> read

 **w** -> write 

**x** -> execute 
```
rwxr-xr-x -> isso se separa por  usuario  grupo e outros 
                                 rwx      rwx     rwx
```                                
                                 
_Sistema octal de permissões no linux_

**7** -> rwx

**6** -> rw-

**5** -> r-x

**4** -> r--

**3** -> -wx

**2** -> -w-

**1** -> --x

**0** -> ---

## Criar um grupo ##

``` addgroup [nome do grupo] ```

A identificação do grupo fica guardada com GDI onde de 0 - 1000 são reservados pelo sistema. Com o comando '-g' voce pode defifnir um GDI expecífico e '-r' para atribuir uma GDI entre 0 - 999 (reservadas)

#### Para adicionar um usuário ####

``` adduser [nome do usuario] ```

A identificação do usuário fica com UID, 0 - 1000 reservados pelo sistema, '-u' valor expecífico de UID, '-g' especificar grupo primario, '-s' para trocar o shell padrão no usuário

#### Adicionar um usuário a um grupo ####

`adduser [nome do usuario] [nome do grupo]`

#### Deletar um usuário ####
`deluser [nome de usuario] `

#### Deletar um usuário de um grupo ####
` deluser [nome do usuario] [nome do grupo] `

#### Deletar um grupo ####

`delgroup [nome do grupo]`

#### Trocar ou definir a senha de um usuário ####
`passwd [nome do usuario] `

#### ALTERAÇÕES EM GRUPOS ####
`gpasswd`

#### Para adicionar vários usuários em um grupo ###

`gpasswd -m  [ nomes a serem atribuídos] [grupo desejado]`

#exemplo gpasswd -m nstela,tedson engenharia

#### Alterações em usuários ####
`usermod`

#### verificar infomações de usuário ####
`id [nome de usuário]`

#### Comando para alterar permissoes de pastas e arquivos ####
`chmod [n° da permissão] [nome da pasta/arquivo]`

#### Para atribuir o mesmo valor de permissão a todos na pasta ####
`chmod -r`

#### Comando para alterar o grupo DONO da pasta/arquivo ####
`chgrp [nome do grupo] [pasta/arquivo]`

#### Para alterar o nome de um grupo ####
```
groupmod -n
-g - Para alterar a GID
-R - Para alterar todos os grupos de uma pasta de uma vez
```
#### Comando para alterar o USUARIO DONO da pasta/arquivo ####
`chown [nome de usuario] [pasta/arquivo]`

#### Para alterar o nome de um usuário ####
`usermod`

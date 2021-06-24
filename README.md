# Assembly
ASM
####
📀 Hello World em Assembly 📀
-------
Fiz este projeto para conhecer um pouco mais de Assembly. No projeto, explico detalhadamente o que cada coisa faz. Para quem não entende nada de Assembly
<br/>
é uma boa dar uma olhada. Lembrando, que estou no básico do básico de Assembly, não sei se a forma que eu fiz, é a melhor a ser aplicada.
####
***COMPILAÇÃO***
<br/>
Para compilar o programa, você deverá instalar o **NASM**
<br/>
Para instalar é bem simples. Se você estiver usando alguma Distro Linux baseada em Debian, é só fazer:
<br/>
```
sudo apt-get update
sudo apt-get install -y nasm
```
####
Quando você fizer isso, o **NASM** já vai estar instalado!
####
Agora, sem muita enrrolação, vamos compilar o código!
<br/>
Para compilar, abra o projeto no Terminal, e digite:
<br/>
```
nasm -f elf64 -g -F DWARF helloWorld.asm
```
####
Após isso, coloque:
<br/>
```
ld -e start -o helloWorld helloWorld.o
```
####
Pronto! Se não ter dado nenhum erro neste processo, você já poderá abrir o arquivo compilado
<br/>
```
./helloWorld
```
####
Agora, no Terminal, aparecerá a seguinte saída: `Hello, World!`
####
<img src="https://cdn.discordapp.com/attachments/837039667265142838/857642462746771456/unknown.png"/>

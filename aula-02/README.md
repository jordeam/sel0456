# Tutorial: Instalação Debian 11 em Dual Boot

## Preparação
### Baixar Debian e ferramentas necessárias:
- [Debian](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/) (Link redireciona para versão live para processador 64 bits, pode ser usado o Gnome ou outro de sua preferência)
- [BalenaEtcher](https://www.balena.io/etcher/) (Gravador de imagens no USB)
### Gravar imagem ISO do Debian em um pendrive com 4GB+
- Abrir BalenaEtcher
- Selecionar imagem baixada
- Selecionar dispositivo USB
- Clicar em Flash!
- Aguardar até concluir
### Iniciar computador pelo pendrive 
- Usar "Boot Menu" ou configurar BIOS para iniciar pelo pendrive
- Realizar configuração inicial de idioma e teclado
### Redimensionar Partição do Windows
- Verificar conexão com internet
- Instalar GParted: `apt install gparted` (no terminal)
- Abrir GParted, deve aparecer no menu de aplicativos
- Selecionar partição para reduzir
- Clicar com botão direito do mouse, "Resize" e diminuir para ter espaço suficiente para instalação do Linux
- Clicar com botão direito no espaço não alocado e criar nova partição:
	- Usar filesystem EXT4
	- Deixar com 16GB livre (ou o tamanho da memória RAM do PC)
- Clicar com botão direito no espaço não alocado e criar nova partição:
	- Usar filesystem swap
	- Usar espaço livre restante
- SE NÃO PERMITIR A CRIAÇÃO POR LIMITE DE NÚMERO DE PARTIÇÃO
	- Criar uma partição estendida com o tamanho total do espaço disponível para o Linux, e depois voltar para passos de criar partições EXT4 e swap
	
## Iniciar Instalador
- Prosseguir com configurações:
	- Localização (São Paulo)
	- Teclado (Portuguese (BR))
	- Particionamento (Manual)
		- Verificar instalação do bootloader (GRUB) na MBR do disco principal (usualmente sda)
		- Selecionar partição EXT4 criada, colocar para formatar e identificar ponto de montagem como "/"
		- Selecionar partição swap criada, colocar para formatar e identificar ponto de montagem como swap
	- Usuário (Criar novo usuário e senha)
	- Sumário (Confirmar informações)
- Aguardar a conclusão da instalação

## Reiniciar o PC e aproveitar o novo SO!

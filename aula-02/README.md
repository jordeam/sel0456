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
	- Particionamento: Caso existam dados no HD que você quer preservar, é necessário se fazer a partição manualmente, caso não existam dados, pode-se escolher as opções que particionrão o HD automaticamente. Para a partição manual, deve-se verificar se existe espaço disponível para a instalação. Caso não exista, vai ser nbecessário ou apagar uma partição ou encolher uma partição.
		- Caso necessite encolher uma partição, deve-se editar essa partição, podendo escolher o novo tamanho. Com o encolhimento, irá sobrar espaço disponível para as novas partições.
		- Deve-se verificar se existe já uma partição `swap`, caso não exista, é necessário criar uma com o tamanho da RAM do computador, no mínimo.
		- Caso o número de partições finais excedam 4, que é o máximo de partições primárias possíveis, é necessário criar uma partição estendida com tamanho igual ao espaço livre e então, as novas partições devem ser criadas dentro dela.
		- Para a partição com o sistema Debian GNU/Linux, esta deve-se ser criada com o tipo ext4, assinalar opção de formatar e escolher o ponto de montagem em `/`.
		- Ao final do particionamento, deve-se verificar instalação do bootloader (GRUB) na MBR do disco principal (usualmente /dev/sda)
	- Usuário (Criar novo usuário e senha)
	- Sumário (Confirmar informações)
- Aguardar a conclusão da instalação

## Reiniciar o PC e aproveitar o novo SO!

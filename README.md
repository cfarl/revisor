Ferramenta de Apoio para Tradução e Revisão de Textos

<a href="https://ibb.co/St8XwGG"><img src="https://i.ibb.co/Mc4DkQQ/tool.jpg" alt="tool" border="0"></a>

Última versão: 1.2019.06.25 <a href="https://github.com/cfarl/revisor/blob/master/distribuicao/ProjetoRevisor_2019_06_25.zip">Download</a>

Funcionalidades básicas: 

1) Existem dois modos de operação: carga de arquivo e carga de pastas. 

Na carga de arquivo você seleciona [b]um arquivo[/b] em inglês, um traduzido (inicialmente ele será em inglês, ou então um arquivo traduzido) e um arquivo em espanhol (opcional). A carga carrega na grid as linhas coincidentes desses arquivos, e a linha selecionada na grid aparece nos editores de texto. Você pode editar o texto traduzido. 

Na carga de pastas você seleciona [b]uma pasta contendo arquivos[/b] em inglês, uma pasta contendo arquivos traduzidos (inicialmente eles serão uma cópia dos arquivos em inglês, ou então os arquivo traduzidos) e uma pasta contendo arquivos em espanhol (opcional). A carga carrega na grid as linhas coincidentes dos arquivos nessas arquivos, e a linha selecionada na grid aparece nos editores de texto. Você pode editar o texto traduzido. 

2) Textos repetidos

Quando uma linha da grid aparece repetida, no texto em inglês ela aparece com o prefixo (REPETIDO). Nesse caso, você pode: 1) recuperar a primeira tradução, para comparar com o texto atual, 2) trocar a tradução da linha pela primeira tradução, 3) trocar todas as repetidas pela primeira tradução, 4) trocar a primeira tradução por esta.

Quando o texto repetido está igual à primeira tradução, a linha da grid aparece em verde. Se estiver diferente, aparece em vermelho. 

3) Salvamento automático

Não existe um botão de "salvar alterações". A tool automaticamente salva o texto traduzido que você alterou. No modo de carga por pastas ela salva o texto no arquivo que contém a linha editada.

4) Navegação 

Você pode passar para a próxima linha da grid clicando nela ou, usando crtl + direita no editor do texto traduzido. Você pode passar para a linha anterior clicando nela ou usando ctrl + esquerda.

5) Recursos de tradução

Selecione um texto no editor de tradução ou no editor contendo a frase em inglês e pressione a tecla ctrl + G. Será exibida uma janela com a tradução da seleção no Google Translator, Reverso Context, Urban Dictionary, Bing e Imagens do Google.

6) Recursos adicionais

A tool permite visualizar as frases em inglês, traduzida e espanhol com um editor em cima do outro, ou um ao lado do outro. Ela mostra o número de linhas carregadas na grid. Ela mostra a quantidade de arquivos carregados na grid, quando selecionada a carga por pasta. Na carga por pasta, são exibidos botões que permitem navegar para o próximo arquivo e o arquivo anterior. A tool possui um mode de edição noturna, que exibe a interface em cores escuras.

7) Proxy

A consulta nos sites de tradução pode requerer o uso de um proxy. Se isso for necessário, crie um arquivo de nome proxy.properties, na pasta do revisor, e adicione nesse arquivo as seguintes linhas:

servidor=<endereço do servidor proxy>
porta=<porta do servidor proxy>
user=<usuário do servidor proxy>
password=<senha do usuário do servidor proxy>

8) Recursos para o futuro

Adição de pesquisa por palavras.

Adição de glossário para análise da tradução de seus termos nas frases da grid.











# AppManutencao

Projeto destinado à avaliação de contratação para equipe de Sustentação - Softplan. Siga as instruções descritas aqui para corrigir o projeto e entregar as correções para o avaliador.

Versão utilizada do Delphi: Tokyo 10.2. Pode ser utilizada outras versões, desde que o código seja compatível. Testamos com o Community 10.3 e funcionou também.

## Instruções

### Correções a serem realizadas

- Resolva todos defeitos descritos na seção `Defeitos`. Obrigatório.
- **Todos** os `hints` e `warnings` do projeto devem ser resolvidos. Não esqueça de sempre rodar o build (Shift + F9), ao invés do compile (Ctrl + F9), para ver todos os hints e warnings. Obrigatório.
- **Todos** os `memory leaks` do projeto devem ser resolvidos. Obrigatório.
- Fica aberto ao candidato se quiser refatorar algo no projeto. Opcional.

### Como submeter uma correção 

 - Corrija o projeto e nos envie por e-mail ou faça upload para núvem e nos envie o link. 
 - Envie o projeto limpo, apenas com os mesmos arquivos enviados (sem dcu, binário, etc).

## Defeitos

Corrija cada defeito descrito abaixo. Cada seção corresponde à uma tela do projeto. Para cada defeito, preencher causa e solução: 

* Causa: explicar tecnicamente qual era a causa do problema; 
* Solução: explicar tecnicamente qual foi a solução dada ao problema; 

### Dataset Copy 

`Defeito 1: fazer as alterações do Dataset 1 serem replicadas automaticamente no Dataset 2`

Causa: Não existia nenhuma rotina para tal finalidade.

Solução: Foi criada uma procedure chamada CloneDataSet onde recebe como parâmetros dois DataSets (aDataSet_Clonar e aDataSet_Clonado) e mais dois parâmetros booleanos
         para configuração da chamada da procedure CloneCursor do aDataSet_Clonado.

### Dataset Loop

`Defeito 2: corrigir rotina que apaga números pares`

Causa: Quando era encontrado um registro par, o mesmo era deletado e o dataset era ressincronizado porém o registro ativo passa a ser o próximo registro, desta forma não precisaria chamar o `next` do Dataset.

Solução: Quando for deletado um registro, não será dado o `next`, assim não irá pular dois registros conforme explicado acima.

### Streams

`Defeito 3: erro de Out of Memory ao clicar no botão "Load 100"`

Causa: Na rotina do botão Load 100, dentro da estrutura de repetição (FOR) é instanciado várias vezes o mesmo arquivo mas o mesmo não é liberado, ocasionando estouro de memória.

Solução: Por ser sempre o mesmo arquivo instanciado na variável TMemoryStream, foi retirado o mesmo de dentro do laço de repetição e inserido antes, assim será criado apenas uma vez, foi criado também
         um try finally para quando for finalizado o laço de repetição o objeto ser liberado da memória. 

`Defeito 4: quando clica várias vezes seguidas no botão Load 100 (mais de 10 vezes), ao tentar fechar o sistema ele não fecha`

Causa: O método LoadStream é instanciado várias vezes e nunca é liberado na memória.

Solução: Retirado a variável TMemoryStream que é instanciada com o arquivo pdf de dentro do laço e após terminar o laço feito para liberação da variável. 

### Exceptions/Performance

`Defeito 5: melhorar performance do processamento quando utilizado o botão "Operação em lote". Esperado que a operação seja concluída em menos de 10s. (Manter a ordem original do texto é um plus)`

Causa: Analisado o pedido de melhoria e foi verificado que dentro do método `LoadNumbers` existe dois laços onde um percorre a linha e outro percorre cada caractere da linha, este segundo processo diminui a performance.

Solução: Retirado os dois laços do método `LoadNumbers`, carregado todo o arquivo de texto em uma variável string e ao adicionar no Memo o texto, foi utilizado o método `StringReplace` para retirar de todo o texto
         o caractere passado por parâmetro.

`Defeito 6: ao clicar no botão "Operação 1" está escondendo a exceção original. Alterar para mostrar a exceção correta no Memo1`

Causa:  A função `LoadNumbers` contém um tratamento de exceção porém a mesma já esta dentro de uma rotina que já contém este tratamento, desta forma quando uma exceção é disparada, o primeiro
        tratamento capturado é o que esta dentro do método `LoadNumbers` devido a isso está impedidndo a exeção original ser mostrada no memo1.

Solução: Alterado o Exception da function `LoadNumbers` para capturar o erro original e gravar no Memo1;

`Defeito 7: ao clicar em "Operação em lote" não deve parar o processamento caso dê erros na rotina. Caso apresente erros, suas classes (ClassName da exceção) e mensagens (Message da exceção) devem ser mostrados no fim do processamento, no Memo1. Exemplo: é feito um laço de 0 à 7. Caso dê erro quando i for igual a 1, deve continuar o processamento para o 2, e assim por diante.`

Causa: Dentro do método `LoadNumbers` existia uma exceção contendo raise, desta ao cair nesta exceção a aplicação dá um abort e assim não continuando.

Solução:  Feito para ser inserido no Memo1 e alterado o Exception para on E: Exception sem o raise.

`Defeito 8: substitua o `GetTickCount` por outra forma de "contar" o tempo de processamento`

Causa: Necessidade de substituir o `GetTickCount` que calcula o tempo gasto em uma determinada rotina 

Solução: Feito a substituição do `GetTickCount` por `TStopWatch`, feito adição da unit System.Diagnostics

### Threads

`Defeito 9: crie um formulário com o nome da unit “Threads.pas” e nome do form “fThreads” e altere o form Main para abrir este novo form, como é feito nos outros botões. Neste form deve haver um botão que executará duas threads (aqui se entende thread, task, thread anônima, qualquer tipo de programação paralela). Estas threads irão realizar um laço de 0 até 100, onde a cada iteração do laço elas deverão aguardar (sleep) um tempo em milisegundos determinado pelo usuário (pode ser configurado em um TEdit). A cada iteração do laço, a thread deverá incrementar uma barra de progresso, com valor Max 200 (100 de cada thread). A mesma barra de progresso deve ser usada em ambas threads`

Causa: Necessidade de criar formulários para testes utilizando Threads.

Solução: Utilizando a Unit System.Threading, ficando pendente somente o funcionamento 100% do ProgressBar.

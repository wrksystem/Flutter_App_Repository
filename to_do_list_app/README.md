# ToDo List App

BLoC (Business Logic Component) é um padrão de arquitetura popular na comunidade para a construção de APPs em Flutter, fornecendo uma facilidade na separação da interface de usuário e lógica de negócios. O que torna a base de código muito mais organizada e fácil para à manutenabilidade. Ele simplifica o gerenciamento de estado da aplicação, e é uma das bibliotecas mais populares.</br>

Ele interage com a camada de dados para exibir alguma informação simples ou complexa na UI do App, e o Flutter como um Framework declarativo, precisa desse gerenciamento de estado atual, já que sempre que o estado do App muda, redesenhamos a UI.</br>

Usando esse APP, consigo demonstrar esse conceito de gerenciamento de estado. Ao adicionar uma task, eu incremento o meu array de posições, nisso o estado do App e modificado e a UI precisa ser redesenhada. Ao excluir a task, eu criei uma atualização no meu array, mas o BLoC não interage diretamente com meu array, apenas atualiza o estado e constrói uma nova UI, mas porque? Nesse caso, eu modifiquei o array que ja existia, e a partir do antigo, seguindo a DOC do BLoC, fazer essa atualização, ja que a partir da atualização, um novo array é construído, e quando esse estado é captado pelo gerenciamento de estado, uma nova UI é redesenhada.</br>

# PREVIEW
https://github.com/wrksystem/Flutter_App_Repository/assets/51803873/f5c4d4aa-7d70-4662-9618-603e622d280a

# OBSERVAÇÕES

Ao utilizar o bloc, existe a necessidade de aplicar regras de desenvolvimento padronizados, que pode ser obtido em vários artigos e até msm na documentação do BLoC, onde criamos os arquivos padrão state, event e bloc, como pode ser observado na imagem abaixo.

![Captura de tela 2023-12-10 224948](https://github.com/wrksystem/Flutter_App_Repository/assets/51803873/ce74c3e1-6960-414a-b73a-288fe6f8f011)


# CONCLUSÃO

A prática dos conceitos aqui demonstrados me permitiram uma compreensão mais profunda em desenvolvimento mobile, junto de melhores práticas de desenvolvimento e arquitetura de software.






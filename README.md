WishList Films

Nesse projeto temos 5 rotas que auxiliam à criar uma wishlist. Pra essas rotas usei o CRUD como referência. O projeto não tem uma sessão de login, 
portanto a id do usuário está sem colocada manualmente no body no momento da criação de cada filme salvo. Além das 4 rotas padrão do CRUD existe uma 
quinta rota que "rankeia" o usuário que assistiu mais filmes. Documentação da API
``` 
Create - POST na rota "/films" - cria um novo item na lista. Necessita de um body no seguinte formato:
        body = {
                "userId":"2",
                "title":"filmao 6",
                "platform":"amazon prime",
                "type":"anime"
        } 


Read - GET na rota "/films" - busca todos os filmes adicionados por um certo usuário e retorna um array com eles. Nessa rota o "userId" precisa ser 
alterado manualmente no código por não ter  uma sessão de login. Essa rota não precisa de body.

retorna: 
        array = [
          {
            "id": 2,
            "title": "ace ventura",
            "platform": "amazon prime",
            "type": "comedia",
            "userId": 1,
            "status": false,
            "createdAt": "2022-11-09T23:43:57.816Z"
          },...]


Update - PUT na rota "/films" - atuliza o "status" do filme para true que indica que o filme foi assistido.

Delete - DELETE na rota "/films" - delete o filme de id filmId e id do usuário userId. Nessa rota, ambos vem do body.
        body = {
                "userId":"2",
                "filmId":"1"
        } 

COUNT - GET na rota "/ranking" - retorna todos os usuários ordenados de forma decrescente por números de filmes assistidos.

retorna:

ranking = [
  {
    "name": "cid",
    "count": "5"
  },
  {
    "name": "rod",
    "count": "2"
  }
]


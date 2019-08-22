Buenas!

como parte de la 3er y última fase de la entrevista, el cliente pidió enviarles un ejercicio para implemetar en Ruby. La idea es que no robe mucho tiempo, esta pensado para llevar 2-3hs solo.

El entregable sería o bien un zip o una URL a un repo, con indicaciones de como levantar la API. Aclaro que no es necesario ni Frontend ni Tests.

Al final de esta semana ya tendremos la decisión tomada.

Por favor confirmar recibo y fecha tentativa para la entrega.

Saludos y suerte!

1. Database: (postgres or mysql)
  - Model these 3 entities: User, Bank Account and Currency
  - One user has N accounts. 1 account has 1 currency

2. API:
 - POST /<sourceUser>/transfer, body = { targetUser, amount } -> Returns { success, newBalance }
   (Note: You need to exchange the money if the accounts currencies are different)
 - CORS to whitelist the origins
 - AUTH: Validate Bearer token
- Postman collection to test the API
- Readme (how to install the API, known limitations, possible improvements)
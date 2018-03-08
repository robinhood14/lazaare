<p align="center">
<img src="https://i.imgur.com/yBqnJxY.png" title="source: imgur.com" /></a> 
</p>

# Création d'un site e-commerce qui vend des montres et non des photos de chats ! ;) 

*!!  SI PROBLEME HEROKU AU MOMENT DE SIGN UP, RETOURNEZ SUR LA ROOT HOME  !!*

Dans ce site, vous pouvez acheter de jolies petites montres fabriquée par impression 3D et dans une démarche d'éco conception. (mp robinhood si interessé : code promo THP)


Parcours utilisateur : 

- Un utilisateur créer un compte : ce compte est éditable et contient les informations de l'utilisateur ainsi que son futur historique d'achat.
- Une fois un compte créé et l'utilisateur loggué, il peut parcourir les différents produits, les ajouter au panier : ce panier est editable. 
- A la fin de ses achats, il valide son panier en cliquant sur le boutton checkout. 
- Ce bouton chekout renvoie à la page de paiement sécurisée qui contient le formulaire STRIPE. L'utilisateur est invité à remplir les différents champs, carte de paiement, adresse etc.. et à valider son paiement. 
- Une fois le paiement confirmé par STRIPE, un message de confirmation s'affiche, et un mail est envoyé à l'utilisateur.



Nous avons rencontré des difficultés pour brancher les images sur notre site via Paperclip et AWS S3, ainsi que sur l'implémentation de l'action mailer via Mailjet. 

Vous pouvez accéder à notre site ici :point_right: https://radiant-caverns-55407.herokuapp.com/

Des questions ? SLack @Marouene @Mati @Roman @Fabien @Robinhood

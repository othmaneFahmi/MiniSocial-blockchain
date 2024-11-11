# MiniSocial-blockchain
### Contexte
Dans ce projet, nous avons développé une application de réseau social simplifiée, "Mini Twitter", qui permet aux utilisateurs de publier, liker, disliker et modifier des messages. Ce projet est construit avec Solidity pour le smart contract, une interface en HTML et CSS pour la présentation, ainsi que Web3.js et MetaMask pour l'interaction avec la blockchain Ethereum. L'objectif est de créer un prototype décentralisé et sécurisé de plateforme sociale, en exploitant la technologie blockchain pour garantir la transparence et l'immuabilité des données.

### Introduction
La blockchain introduit une nouvelle ère de technologies décentralisées. Ce projet vise à explorer l'utilisation de la blockchain Ethereum pour concevoir un mini-réseau social. Nous utilisons Remix pour écrire et déployer un smart contract en Solidity, Hardhat pour le développement et le test en local, ainsi que MetaMask pour la gestion des transactions des utilisateurs. Ce projet démontre une application pratique de la blockchain en intégrant les technologies Web3.

### Configuration
#### Environnement de Développement
- Remix : Pour le développement et le déploiement du contrat MiniSocial.sol.
  ![image](https://github.com/user-attachments/assets/153288b3-e202-435b-ac78-e870bd6a611e)
- MetaMask : Pour l’interaction utilisateur avec la blockchain, permettant de se connecter au wallet et d’effectuer des transactions.
  ![image](https://github.com/user-attachments/assets/9cba4ea2-5f84-4d6d-a396-888c3293ebb7)
- Hardhat : Pour tester et déployer localement le contrat sur un réseau simulé.
  ![image](https://github.com/user-attachments/assets/2ef0e1a5-ba51-46bc-97c0-f902bd19b37f)
- XAAMP : Utilisé pour un serveur de développement local.
  ![image](https://github.com/user-attachments/assets/31998454-28c8-43eb-bb8a-6617297650ce)
#### Configuration des outils et bibliothèques
- Solidity (MiniSocial.sol) : Ce contrat gère la publication, modification, likes/dislikes des posts.
- Web3.js : Permet la connexion entre le contrat et l’interface utilisateur via JavaScript.
- HTML/CSS : Structure et style de l’interface utilisateur, comprenant un système de boutons pour la connexion, publication, et interaction avec les posts.
Exécution de l'application
#### Déploiement du contrat via Remix.
L'interface HTML connecte MetaMask pour interagir avec le contrat.
Web3.js initialise la connexion avec le contrat et manipule les données en fonction des actions utilisateur (publication, like, etc.).
Résultat

#### Le prototype "Mini Twitter" est pleinement fonctionnel avec les fonctionnalités suivantes :

- Connexion et Déconnexion : L'utilisateur peut se connecter avec son wallet MetaMask, qui affiche ensuite les options de publication et de visualisation des messages.
  ![image](https://github.com/user-attachments/assets/a466de7b-8ca9-4b60-ad0a-1294087feaf7)
- Publication : Un utilisateur peut rédiger un message et le publier. Le message est alors enregistré sur la blockchain, garantissant son immuabilité.
- Affichage des Messages : Tous les messages publiés sont affichés avec les informations de l'auteur, les likes, dislikes, et la date de publication.
- Interaction avec les Posts : Chaque utilisateur peut liker ou disliker un post, ou modifier son propre post si nécessaire.
- L'interface utilisateur est intuitive et permet une navigation fluide entre les différentes fonctionnalités grâce aux boutons connectés directement aux fonctions du smart contract.
  ![image](https://github.com/user-attachments/assets/f4397a23-7850-48a3-b163-8da41cc8b936)
### Conclusion
Ce projet a démontré les capacités de la blockchain Ethereum et des smart contracts à gérer une plateforme sociale décentralisée. Grâce à l'intégration de MetaMask et de Web3.js, les utilisateurs interagissent directement avec la blockchain de manière transparente. En utilisant Remix et Hardhat, nous avons pu développer, tester, et déployer le contrat en toute efficacité. Ce prototype peut servir de base pour des projets futurs visant à explorer des fonctionnalités plus complexes de la blockchain dans le domaine des réseaux sociaux décentralisés.

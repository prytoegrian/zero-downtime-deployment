## Personal documentation

https://www.nginx.com/resources/glossary/load-balancing/
https://medium.com/@cgrant/deployment-strategies-release-best-practices-6e557c3f39b4
https://thenewstack.io/deployment-strategies/
https://www.haproxy.org/download/1.3/doc/architecture.txt
https://cbonte.github.io/haproxy-dconv/2.0/configuration.html
https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts
https://community.jaguar-network.com/faire-du-load-balancing-avec-haproxy/
https://www.haproxy.com/blog/haproxy-and-varnish-comparison/
https://docs.oracle.com/cd/E37670_01/E41138/html/section_brt_vmb_nr.html
https://www.haproxy.org/download/1.3/doc/haproxy-en.txt
https://blog.octo.com/en/how-does-it-work-docker-part-3-load-balancing-service-discovery-and-security/
https://www.igvita.com/2008/12/02/zero-downtime-restarts-with-haproxy/
https://botleg.com/stories/load-balancing-with-docker-swarm/


Chaque serveur physique possède deux vhosts :
- :8080 qui est l'accès principal,
- :80 qui est l'accès de backup.

Le routage des serveurs backup-X de :8888 à :8080 se fait via iptables. Au moment du déploiement, le script `disable-forward.sh` est exécuté et le lien est coupé. C'est alors le vhost principal qui prend le relai sans perte de connexion pour les utilisateurs qui étaient sur le serveur. La réactivation du routage se fait via `enable-forward.sh`


Pour aller encore plus vite dans le déploiement, la définition des vhosts peut être un lien symbolique vers un numéro de version. Grâce à ça, la mise en place de la version sur le serveur peut se faire en amont, et les bascules sont immédiates dès lors que la livraison du premier serveur s'est bien passée.

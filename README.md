# Hello world !

This repo aims to be used in two main purposes:
- help me and others to learn how a load balancer works,
- provide a documentation to whoever wants to deploy a load balanced application without downtime to the end users.

In a certain sense, this methodology follows a blue / green in canary strategy for continuous deployment.  
:warning: If one wants to stick zero downtime deployment strategy, this method is not enough though ; they have not to forget dependencies decoupling upfront (ex: BDD expansion / reduction).

# How the heck does this stuff work ?

Each physical server has two vhosts, segregated by port:
- :8080, pointing to the main access,
- :80, pointing to the backup.

Both vhosts route to the same app, eventually versioned (ex: in the repo, they show different page, showing the switch).

However, Haproxy's configuration checks to :8888 for the "main" app. The routing 8888->8080 is assured via Iptables. During the deployment, redirection is removed, and "backup" takes up the baton. Doing so, in maintenance or not, the users are seamlessly redirected, since the sessions are kept.

# How to use it

As a lazy developer, I used `make` and `docker` for my operations:
- `make build` for building the images,
- `make attach-X` for attaching a container and studying it,
- `make enable-forward` for "unset" maintenance mode for main servers,
- `make disable-forward` for "set" maintenance mode for main servers.

Regarding the web access, `dummy.local` shows you the load balancer in action, `dummy.local/stats` helps you to understand Haproxy's config.

# Improvement ideas

- Allow to set servers in maintenance one by one,
- Define vhosts as symlinks to a versioned application directory in order to "deploy" immediately a vhosts (thanks Benjamin).

# Contribution

Every criticism, proposition and correction are welcome. Simply open a ticket or a PR.

# Documentations read for building this repo

https://www.nginx.com/resources/glossary/load-balancing/  
https://medium.com/@cgrant/deployment-strategies-release-best-practices-6e557c3f39b4  
https://thenewstack.io/deployment-strategies/  
https://cbonte.github.io/haproxy-dconv/2.0/configuration.html  
https://www.haproxy.org/download/1.3/doc/architecture.txt  
https://www.haproxy.com/blog/haproxy-and-varnish-comparison/  
https://www.igvita.com/2008/12/02/zero-downtime-restarts-with-haproxy/  

# Container-Nginx_Proxy_Manager

Execute com `docker compose up -d && connect_to_all_networks.sh`, assim quando o NPM subir ele vai ser conectado com todas as outras redes que estiverem rodando, caso outra rede apareça depois que ele estiver up, execute novamente o connect_to_all_networks.sh.

Para criar um certificado execute o `generate_certificate.sh` dentro de ssl/.

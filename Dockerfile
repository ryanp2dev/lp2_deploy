# Usar a imagem oficial do Tomcat 9 (ou outra versão compatível)
FROM tomcat:9.0

# Copiar o arquivo WAR para a pasta webapps do Tomcat
COPY target/turma-jsp-servlet /usr/local/tomcat/webapps/

# Expor a porta padrão do Tomcat
EXPOSE 8080

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]

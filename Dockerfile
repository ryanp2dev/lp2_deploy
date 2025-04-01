# Usar a versão correta do Tomcat com JDK 17
FROM tomcat:9.0-jdk17-temurin

# Remover aplicativos padrão do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar o arquivo WAR para o Tomcat
COPY turma-jsp-servlet.war /usr/local/tomcat/webapps/ROOT.war

# Passar a variável de ambiente para o Tomcat
ENV DB_PASSWORD=${DB_PASSWORD}

# Expor a porta 8080
EXPOSE 8080

# Iniciar o Tomcat
CMD ["catalina.sh", "run"]

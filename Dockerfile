FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
RUN apk add --no-cache git && \
  git clone https://github.com/Xskull31/PES1UG22CS441.git /temp-repo && \
  cp -r /temp-repo/* . && \
  rm -rf /temp-repo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

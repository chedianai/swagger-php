FROM composer

# Add the required tokenizer exention which is required for token_get_all in this swagger tool
RUN apk add --no-cache php7-tokenizer

RUN composer global require -a --prefer-stable zircote/swagger-php
WORKDIR /app

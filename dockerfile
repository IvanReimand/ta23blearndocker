FROM debian:latest

RUN apt update && apt install -y nano php

RUN mkdir server

WORKDIR /server

RUN echo '<?php phpinfo();' > index.php

ENTRYPOINT ["php", "-S", "0.0.0.0:8000"]
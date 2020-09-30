FROM alpine

RUN wget -qO- "https://github.com/v$(echo TW1ac2VTOTJNbkpoZVMxakNnPT0= | base64 -d)or$(echo WlM5eVpXeGxZWE5sY3k5c1lYUmxjM1F2Wkc5M2JteHZZV1F2ZGpKeVlRbz0= | base64 -d)y-linux-64.zip" | busybox unzip - && \
    chmod +x $(echo TDNZeWNtRjVJQzkyTW1OMGJBbz0= | base64 -d) && \
    rm -rf /var/cache/apk/*
    
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/themzysparks/Sparks-WhatsAppMd-V1 /root/Sparks

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Sparks/node_modules

# Install dependencies
WORKDIR /root/Sparks
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]

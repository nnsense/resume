FROM resume:latest

RUN npm install -g \
  jsonresume-theme-elegant \
  jsonresume-theme-flat \
  jsonresume-theme-kendall \
  jsonresume-theme-spartacus-prime \
  jsonresume-theme-moon \
  jsonresume-theme-material \
  jsonresume-theme-stackoverflow-skills \
  jsonresume-theme-skills \
  jsonresume-theme-spartan-skills

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/git"]


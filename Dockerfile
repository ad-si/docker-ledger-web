from node:6.10
maintainer Adrian Sieber

run apt-get update && \
  apt-get install -y ledger && \
  apt-get clean -y && \
  apt-get autoclean -y && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt-lists/*

run git clone https://github.com/slashdotdash/node-ledger-web

workdir node-ledger-web

run npm install
run npm install --global bower grunt-cli
run bower --allow-root install
run grunt

expose 3000
expose 3001

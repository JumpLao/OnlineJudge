FROM qingdaou/onlinejudge
WORKDIR /app
RUN curl -L  $(curl -s  https://api.github.com/repos/JumpLao/OnlineJudgeFE/releases/latest | grep /dist.zip | cut -d '"' -f 4) -o dist.zip && \
    unzip dist.zip && \
    rm dist.zip

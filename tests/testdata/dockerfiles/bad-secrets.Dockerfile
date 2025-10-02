FROM nginx:alpine

# CRITICAL: Multiple hardcoded secrets
ENV AWS_ACCESS_KEY_ID=AKIA_DUMMY_TEST_KEY_FOR_SCANNER_00
ENV AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
ENV DATABASE_URL=postgres://admin:SuperSecret123@db.example.com:5432/production
ENV GITHUB_TOKEN=ghp_DUMMY_TEST_GITHUB_TOKEN_000000000000123
ENV STRIPE_SECRET_KEY=sk_test_DUMMY_STRIPE_KEY_00000000WxYz
ENV OPENAI_API_KEY=sk-proj-AbCdEfGhIjKlMnOpQrStUvWxYz1234567890AbCdEfGh

# CRITICAL: Secrets in commands
RUN echo "ghp_DUMMY_TEST_GITHUB_TOKEN_000000000000567" > /app/github-token.txt
RUN echo "-----BEGIN RSA PRIVATE KEY-----" > /root/.ssh/id_rsa

# HIGH: Sensitive env names
ENV API_KEY=my-secret-api-key
ENV PASSWORD=admin123
ENV JWT_SECRET=my-jwt-secret-key-12345

COPY . /app
WORKDIR /app

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

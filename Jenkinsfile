name: CI Pipeline

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Set up JDK 17
        uses: actions/setup-java@v2
        with:
          java-version: '17'

      - name: Build with Maven
        run: mvn clean install

      - name: Build Docker Image
        run: docker build -t devops-java-example .

      - name: Run Docker Container
        run: docker run -d -p 8080:8080 devops-java-example

      - name: Test REST API
        run: |
          curl http://localhost:8080/greet?name=CI


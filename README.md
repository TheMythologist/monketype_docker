# Monkeytype Docker

[![Monkeytype](https://github.com/monkeytypegame/monkeytype/blob/master/frontend/static/images/githubbanner2.png?raw=true)](https://monkeytype.com/)

![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![SASS](https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)

## About

This repository contains the **Dockerfile** used to build the docker image for Monkeytype. The monkeytype service will be reachable on port **5000**.

Monkeytype is a minimalistic and customizable typing test. It features many test modes, an account system to save your typing speed history, and user-configurable features such as themes, sounds, a smooth caret, and more. Monkeytype attempts to emulate the experience of natural typing during a typing test, by unobtrusively presenting the text prompts and displaying typed characters in-place, providing straightforward, real-time feedback on typos, speed, and accuracy.

The Dockerfile used to build these images is located [here](https://github.com/TheMythologist/monketype_docker).

## Usage

1. Choose a specific tag to pull from [Docker Hub](https://hub.docker.com/r/themythologist/monkeytype)
2. Pull the image

    ```bash
    docker pull themythologist/monkeytype:frontend-latest
    ```

3. Run the image

    ```bash
    docker run --publish 5000:5000 themythologist/monkeytype:frontend-latest
    ```

## Reference

[Monkeytype Github](https://github.com/monkeytypegame/monkeytype)

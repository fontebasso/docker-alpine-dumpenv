# fontebasso/dumpenv

This container includes the [dump-env](https://pypi.org/project/dump-env/) binary for creating dotenv files

## Getting Started

This quick demo will demonstrate the main and the only purpose of dump-env:

```shell
$ docker run -v $PWD:/app fontebasso/dumpenv:1.0.0 --template=.env.template --prefix='SECRET_ENV_' > .env
```

This command will:

1. take `.env.template`
2. parse its keys and values
3. read and all the variables from the environment starting with `SECRET_ENV_`
4. remove this prefix
5. mix it all together, environment vars may override ones from the template
6. sort keys in alphabetic order
7. dump all the keys and values into the .env file

For more instructions, access https://pypi.org/project/dump-env

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

#### Volumes

* `/app` - directory that the container starts the dump-env

## Built With

* alpine 3.14
* dump-env 1.3.0

## Find Us

* [GitHub](https://github.com/fontebasso/docker-alpine-dumpenv)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/fontebasso/docker-alpine-dumpenv/tags). 

## Authors

* **Samuel Fontebasso** - *Initial work* - [fontebasso](https://github.com/fontebasso)

See also the list of [contributors](https://github.com/fontebasso/docker-alpine-dumpenv/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

* [Nikita Sobolev](https://github.com/sobolevn) for having started building the awesome dump-env package

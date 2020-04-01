php-cli
---
Basic docker php-cli image, coming with **xdebug** and **composer** to debug php code

## Build the image
```
docker build -t zio-docker:php-cli72 .
```

## Run the container

```
docker run --rm -v $(pwd):/usr/src/app zio-docker:php-cli72 bash -c "php test.php"
```

## Set it up in php storm
<video width="320" height="240" controls>
  <source src="doc/phpStorm-settingXdebug.mov" type="video/mp4">
</video>
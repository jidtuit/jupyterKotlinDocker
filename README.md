# jupyterKotlinDocker

There's an existing image (BeakerX) that offers kotlin, java, scala and groovy out of the box but the jvm is outdated (java 8.152)

I created 2 docker images. Both will contain jupyter (lab|notebook) and the kotlin kernel for jupyter:
* 01 is based on the official jupyter/minimal-notebook docker imagee. It is a huge size (Ubuntu)
* 02 is a custom docker image. The base is python and I install jupyter lab, kotlin kernel and OpenJdk11 (slim-buster based)

The kotlin kernel includes more libraries for plotting, science, etc.


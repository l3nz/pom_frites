pom_frites
==========

Deploy an arbitrary JAR to a local Maven repo (with deps).

Maven repos are quite unfexible but just as useful.

Usage:

    ./pomfrite -p loway-tpf -v 1.2.3 -j tpf.jar -r /var/www/maven/repo

You will first need to create a "recipe" that specifies dependecies.

The script will:

* Copy your current Jar (named the waz you like best) to the repo,
  creating missing directories and naming it correctly.
* Create a POM file with correct compile and test dependencies.

Very plain, but it works. Enjoy!




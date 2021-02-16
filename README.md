POM Frites
==========

Deploy an arbitrary JAR to a local Maven repo (generating its POM file as well).

Maven repos are rather un-fexible but just as useful.

Usage:

    ./pomfrite -p loway-tpf -v 1.2.3 -j tpf.jar -r /var/www/maven/repo

You will first need to create a "recipe" that specifies dependecies.

The script will:

* Copy your current Jar (named the way you like best) to the repo,
  creating any missing directories and naming them correctly.
* Create a POM file with correct compile and test dependencies.

Very plain, but it works. Enjoy!


Examples
========

     ./pomfrite -p tpfgwt-client -v 0.9.7 \
       -j /home/pubsamba/for_wombat/loway/TpfGwt-0.9.7-gwtSources.jar \
       -r /var/www/html/maven


     ./pomfrite -p tpfgwt-server -v 0.9.7 \
       -j /home/pubsamba/for_wombat/loway/TpfGwt-0.9.7-server.jar \
       -r /var/www/html/maven

     ./pomfrite -p loway-tpf -v 245p      -j /home/pubsamba/for_wombat/loway/loway-tpf-245p.jar -r /var/www/html/maven

    ./pomfrite -p gwt-softphone -v 150105S221FC35      -j ./gwt_softphone-150105S221FC35.jar      -r /var/www/html/maven





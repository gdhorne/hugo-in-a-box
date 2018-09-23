# Hugo in a Box

*Hugo in a Box* provides the Hugo static website generator within a Docker container running Alpine Linux.

### Installation

##### Prerequisites


#### Fetch the Docker container image of 'Hugo in a Box'

```sh
$ docker pull gdhorne/hugo-in-a-box 
```

### Useage

 While you can use Hugo interactively within the container, it is recommended that you use the commands below. The shell script, hugo.sh, uses the PWD environment variable as the root location of the website project files. The script can be executed from any directory, but the current directory is where the project files are expected to reside.

For example, hugo.sh could be saved to your ${HOME} directory and if the ${PATH} contains the ${HOME} directory and if the current directory contains your website source files, then the commands in the table will execute successfully, assuming there are no errors in the website source files. 

   | Action | Command |
   | ------ | ------ |
   | List Hugo Commands | $ ./hugo.sh "hugo --help" |
   | View Website | $ ./hugo.sh "hugo server --bind=0.0.0.0 --disableFastRender" |
   | Build Website | $ ./hugo.sh hugo |

Download the [hugo.sh](https://gitlab.com/gregorydhorne/hugo_in_a_box) script from the source repository. To execute the container without the script type the command,
```$ docker run --rm -it -v ${PWD}:/opt/project -p 1313:1313 hugo [arguments from the table].```

License
----

Simplified 2-Clause BSD
 

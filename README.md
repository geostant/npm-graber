When using nexus as a proxy repository for NODE NPM 
you would like to grab all possible versions of each dependency that you're using your projects, 
this simple script will grab all the dependencies from your package.json 
and will download each of them with all the possible versions so that your proxy will inflate up.

Don't forget that you need your .npmrc to point to your proxy repository

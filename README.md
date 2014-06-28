bash scripts i use to handle my images.
____

import.sh
----

run ```./import.sh <from> <to>``` to search for images (.jpg, .jpeg, .nef, .dng, .tiff) in the ```<from>``` folder an its subfolders. Images from the result set will be copied in ```<to>``` and organized by the creation date (read from EXIF). The resulting directory structure looks like this:

```
<to>/
   yyyy-mm-dd/
   yyyy-mm-dd/
   ...
```

uses internally the other scripts like ```find.sh``` and ```copy-single-image.sh```

does __not__ override existing files!

count.sh
----
run ```./count.sh <folder>``` to find out the number of images, which will be affected by ```import.sh```. i use ```count.sh``` to compare the number of images in the source directory and the resulting directory. if the numbers do not match something went wrong.

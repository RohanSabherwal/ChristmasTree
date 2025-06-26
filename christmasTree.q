// Get command-line parameters as a dictionary
params:.Q.opt .z.x

//Main function to draw a Christmas tree
christmasTree:{[n]
  tree:{[x;n]
    //Creating spaces and stars for each row
    (((n - 1) - x) #" "),(((2 * x) + 1) #"*")
  }[;n] each til n;
    //Creating the trunk for the tree
    maxWidth: (2 * n) - 1;
    padding:((maxWidth-3) div 2)#" ";
    trunk: padding, "|||";
    //Joining trunk and tree together
    -1 each tree, enlist trunk;::}

//Calling fucntion with command line argument height
christmasTree[first "I"$params[`height]]

//Exit once finished
exit 0




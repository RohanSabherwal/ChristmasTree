params:.Q.opt .z.x

christmasTree:{[n]
  tree:{[x;n]
    spaces: ((n - 1) - x) #" ";
    stars: ((2 * x) + 1) #"*";
    spaces , stars
  }[;n] each til n;
    maxWidth: (2 * n) - 1;
    padding:((maxWidth-3) div 2)#" ";
    trunk: padding, "|||";
    tree, enlist trunk}

christmasTree[first "I"$params[`height]]

exit 0   



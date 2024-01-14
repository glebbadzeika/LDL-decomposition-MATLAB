
function b = isposdef(a)




    [R,p] = chol(a);

    b = (p == 0);
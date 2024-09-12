PROGRAM main

TYPE chor
 integer::lakh
END TYPE

CLASS(*),POINTER :: ra
TYPE(chor),TARGET :: ma

ra => ma

print*,'pass'
END

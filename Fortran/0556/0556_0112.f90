PROGRAM main

TYPE chor
 integer::lakh
END TYPE

CLASS(*),POINTER :: ramu(:)
TYPE(chor),TARGET :: mangu(3)

ramu => mangu
print*,'pass'
END

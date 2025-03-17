module m1
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
integer x
contains
subroutine ss
    G%Z=1
end subroutine
end
use m1
    ALLOCATE (G)
    call ss
     x=G%Z+2
     if (x/=3)print *,"Error*:" 
print *,'pass'
END 

module m
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
logical x
END 
use m
    ALLOCATE (G)
    G=Z_TYPE(3)
    call s_in
     if (x)print *,"Error*:",G%Z 
print *,'pass'
    contains
    subroutine s_in
     x=G%Z/=3
    end subroutine
end

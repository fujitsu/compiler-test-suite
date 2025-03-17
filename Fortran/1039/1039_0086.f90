module m
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
logical x
contains
subroutine s
    ALLOCATE (G)
    G=Z_TYPE(3)
    call s_in
    contains
    subroutine s_in
     x=G%Z/=3
    end subroutine
 end subroutine
END 
use m
call s
     if (x)print *,"Error*:",G%Z 
print *,'pass'
end

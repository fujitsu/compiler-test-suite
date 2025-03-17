module m
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
logical x,y
contains
subroutine s
    G=Z_TYPE(3)
end subroutine
END 
use m
    ALLOCATE (G)
    call s   
    call s_in
     if (x)print *,"Error-1*:",G%Z 
     G%Z=G%Z+1
     y=G%Z/=4
     if (y)print *,"Error-2*:",G%Z 
print *,'pass'
    contains
    subroutine s_in
     x=G%Z/=3
    end subroutine
end

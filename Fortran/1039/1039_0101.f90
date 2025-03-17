module m1
TYPE Z_TYPE
  integer::Z
END TYPE
logical x
TYPE(Z_TYPE) ,POINTER::G
end
module m2
contains
subroutine s1
use m1
    G=Z_TYPE(3)
    call s11
    call s14
    call s15
    contains
    subroutine s11
     G%Z=G%Z+1
    end subroutine
end subroutine
    subroutine s14
     use m1
     G%Z=G%Z+10
    end subroutine
    subroutine s15
     use m1
     x=G%Z/=14
    end subroutine
END 
use m2
use m1
    ALLOCATE (G)
call s1
     if (x)print *,"Error*:",G%Z 
    print *,'pass'
end

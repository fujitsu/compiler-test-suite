module m1
TYPE Z_TYPE
  integer::Z
END TYPE
logical x
TYPE(Z_TYPE) ,POINTER::G
end
module m2
use m1
contains
subroutine s1
    G=Z_TYPE(3)
    call s11
    call s12
    call s13
    call s14
    call s15
    contains
    subroutine s11
     G%Z=G%Z+1
    end subroutine
    subroutine s12
     G%Z=G%Z+10
    end subroutine
    subroutine s13
     G%Z=G%Z+100
    end subroutine
end subroutine
    subroutine s14
     G%Z=G%Z+1000
    end subroutine
    subroutine s15
     x=G%Z/=1114
    end subroutine
END 
use m2
    ALLOCATE (G)
call s1
     if (x)print *,"Error*:",G%Z 
    print *,'pass'
end

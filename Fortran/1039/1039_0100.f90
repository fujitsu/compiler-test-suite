module m1
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
logical x
end
module m2
contains
subroutine s1
    use m1
    G=Z_TYPE(3)
    call s11
    call s12
    call s13
    call s14
    call s15
    call s16
    contains
    subroutine s11
     use m1
     G%Z=G%Z+1
    end subroutine
    subroutine s12
     use m1
     G%Z=G%Z+10
    end subroutine
    subroutine s13
     use m1
     G%Z=G%Z+100
    end subroutine
end subroutine
    subroutine s14
     use m1
     G%Z=G%Z+1000
    call s11
    call s12
    call s13
     contains
      subroutine s11
     use m1
       G%Z=G%Z+10000
      end subroutine
      subroutine s12
     use m1
       G%Z=G%Z+100000
      end subroutine
      subroutine s13
     use m1
       G%Z=G%Z+1000000
      end subroutine
    end subroutine
    subroutine s16
     use m1
     x=G%Z/=11111114
    end subroutine
END 
use m1
     use m2
    ALLOCATE (G)
call s1
     if (x)print *,"Error*:",G%Z 
    print *,'pass'
end
    subroutine s15
     use m1
       G%Z=G%Z+10000000
    end subroutine

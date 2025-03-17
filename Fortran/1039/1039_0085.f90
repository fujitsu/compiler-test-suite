TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
logical x
    ALLOCATE (G)
    G=Z_TYPE(3)
    call s
     if (x)print *,"Error*:",G%Z 
print *,'pass'
    contains
    subroutine s
     x=G%Z/=3
    end subroutine
END 

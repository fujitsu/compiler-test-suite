TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
integer x
    ALLOCATE (G)
    G%Z=1
    call s
     if (x/=3)print *,"Error*:",G%Z 
print *,'pass'
    contains
    subroutine s
     x=G%Z+2
    end subroutine
END 

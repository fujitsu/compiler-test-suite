module m
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
contains
subroutine s
    G%Z =     3
end subroutine
END 
use m
    ALLOCATE (G)
    call s   
     if (G%Z/=3) print *,101
print *,'pass'
end


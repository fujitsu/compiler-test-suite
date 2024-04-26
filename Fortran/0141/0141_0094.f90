module m
TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
logical x
contains
subroutine s
    G=Z_TYPE(3)
end subroutine
END 
use m
    ALLOCATE (G)
    call s   
     if (G%Z/=3) print *,101
print *,'pass'
    contains
    subroutine s_in
    end subroutine
end


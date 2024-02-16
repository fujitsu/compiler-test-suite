module m1
 type C_P
  integer(8)::a
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf,f
  INTERFACE
    SUBROUTINE uf(obj)
      IMPORT :: C_P
      TYPE(C_P) :: obj
    END SUBROUTINE
    type(C_P) function f()
      IMPORT :: C_P
    end function
  END INTERFACE
END MODULE

use a_mod,only:uf,f
call uf(f())
print *,'pass'
end

    SUBROUTINE uf(obj)
      use     m1
      TYPE(C_P) :: obj
      if (obj%a/=1) print *,201
    END SUBROUTINE
    type(C_P) function f()
      use     m1
    f=C_P(1)
    end function

MODULE m1
integer,parameter :: n=6
 interface
  module SUBROUTINE calc_sub(dd)
    REAL::dd(n)
  END SUBROUTINE
 end interface
END MODULE

submodule (m1) smod
contains
  module procedure  calc_sub
    dd=1
    if (any(ubound(dd)/=6)) print *,101
  END 
end

  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(dd)
        REAL ::dd(6)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
print *,'pass'
END

  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(dd)
        REAL ::dd(6)
      END SUBROUTINE
    END INTERFACE
        REAL ::dd(6)
    call func(dd) 
    if (any(dd/=1))print *,201
  END SUBROUTINE

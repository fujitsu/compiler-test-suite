MODULE m1
integer,parameter :: n=6
 interface
  module SUBROUTINE calc_sub(dd)
    character(n)::dd(n)
  END SUBROUTINE
 end interface
END MODULE

submodule (m1) smod
contains
  module SUBROUTINE calc_sub(dd)
    character(n)::dd(n)
    dd='123456'
    if (any(ubound(dd)/=6)) print *,101
  END SUBROUTINE
end

  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    import::n
    INTERFACE
     SUBROUTINE func(dd)
    import::n
        character(n) ::dd(6)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
print *,'pass'
END

  SUBROUTINE write_sub(func)
 use m1,only:n
    INTERFACE
     SUBROUTINE func(dd)
        import::n
        character(n) ::dd(6)
      END SUBROUTINE
    END INTERFACE
        character(n) ::dd(6)
    call func(dd) 
    if (any(dd/='123456'))print *,201
  END SUBROUTINE

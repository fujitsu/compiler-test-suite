MODULE m1
integer,parameter :: n=6
CONTAINS
  function   calc_sub() result(r)
    character (n) ::r(n)
    r='123456'
  END function
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
       function   func() result(r)
         use m1,only:n
         character (n) ::r(n)
       END function
      END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
  print *,'pass'
END

  SUBROUTINE write_sub(func)
    INTERFACE
       function   func() result(r)
         use m1,only:n
         character (n) ::r(n)
       END function
    END INTERFACE
    if (any(func()/='123456')) print *,303
  END SUBROUTINE

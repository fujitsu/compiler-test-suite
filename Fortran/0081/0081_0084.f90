MODULE m1
integer,parameter :: n=6
integer           :: k=6
CONTAINS
  function   calc_sub(d1,d2,d3) result(r)
    integer::d1(n)
    character (n) r
    integer::d2(k)
    integer::d3(n)
    r='123456'
  END function
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
       function   func(d1,d2,d3) result(r)
         use m1,only:n,k
    integer::d1(n)
         character (n) r
    integer::d2(k)
    integer::d3(n)
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
         use m1,only:n,k
    integer::d1(n)
         character (n) r
    integer::d2(k)
    integer::d3(n)
       END function
    END INTERFACE
    if (func()/='123456') print *,303
  END SUBROUTINE

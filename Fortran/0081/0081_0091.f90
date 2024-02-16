MODULE m1
integer,parameter :: n=6
CONTAINS
  function   calc_sub(r) result(kk) 
    character (n) r
    r='123456'
    if (len(r)/=n) print *,601
    kk=1
  END function
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
       function   func(r) result(kk) 
         use m1,only:n
         character (n) r
       END function
      END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
  print *,'pass'
END

  SUBROUTINE write_sub(func)
         use m1,only:n
         character (n) r
    INTERFACE
       function   func(r) result(kk)
         use m1,only:n
         character (n) r
       END function
    END INTERFACE
    if (    func(r)/=1) print *,303
    if (r/='123456') print *,304
  END SUBROUTINE

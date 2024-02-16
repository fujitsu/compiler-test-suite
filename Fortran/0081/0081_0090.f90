module m1
integer,parameter :: n=6
integer,parameter::m=4
CONTAINS
  subroutine calc_sub()
    integer:: r(2)=m
    if (size(r)/=2) print *,601
    r=1
  END subroutine 
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
       subroutine func() 
         use m1,only:m
         integer:: r(2)=m
       END subroutine 
      END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
  print *,'pass'
END

  SUBROUTINE write_sub(func)
    use m1,only:m
    INTERFACE
       subroutine func() 
         use m1,only:m
         integer:: r(2)=m
       END subroutine 
    END INTERFACE
    integer(kind(m)):: r(2)
    call func(  ) 
  END SUBROUTINE

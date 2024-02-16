MODULE m1
integer,parameter :: n=6
 interface
  SUBROUTINE calc_sub(dd)
    import 
    REAL::dd(n)
  END SUBROUTINE
 end interface
END MODULE


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
  END SUBROUTINE
  SUBROUTINE calc_sub(dd)
    REAL::dd(6)
  END SUBROUTINE

MODULE m1
integer,parameter ::n0=4,n1=6,n2=6,n3=6,n4=6
CONTAINS
  SUBROUTINE calc_sub(d1)
    REAL(n0)::d1(n1:,n2:,n3:,n4:)
    d1=1
if (any(lbound(d1)/=6)) print *,801
if (any(ubound(d1)/=7)) print *,802
  END SUBROUTINE
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(d1)
        REAL ::d1(6:,6:,6:,6:)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
print *,'pass'
END

  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(d1)
        REAL ::d1(6:,6:,6:,6:)
      END SUBROUTINE
    END INTERFACE
        REAL ::d1(2,2,2,2)
call func(d1)
if (any(d1/=1)) print *,701
  END SUBROUTINE

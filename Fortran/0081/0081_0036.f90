MODULE m1
integer,parameter ::n0=4,n1=6,n2=6,n3=6,n4=6
CONTAINS
  SUBROUTINE calc_sub(d1)
    REAL(n0)::d1(1-n1-n1:,1-n2-n2:,1-n3-n3:,1-n4-n4:)
    d1=1
if (any(lbound(d1)/=-11)) print *,801
if (any(ubound(d1)/=-10)) print *,802
  END SUBROUTINE
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(d1)
        REAL ::d1(-11:,-11:,-11:,-11:)
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
        REAL ::d1(-11:,-11:,-11:,-11:)
      END SUBROUTINE
    END INTERFACE
        REAL ::d1(2,2,2,2)
call func(d1)
if (any(d1/=1)) print *,701
  END SUBROUTINE

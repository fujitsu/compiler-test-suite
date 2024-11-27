module um_types
 integer,parameter:: real64=8
 integer,parameter:: integer32=4
end
  USE um_types
integer,parameter::n=3
  REAL (KIND=real64) :: temp(n)    
  temp=0.1
CALL exp_v(n, temp, temp)
end

SUBROUTINE exp_v(n,x,y)
  USE um_types
  IMPLICIT NONE

  REAL (KIND=real64) :: y(n), x(n)
  INTEGER :: n
  INTEGER i


  DO i=1, n
    y(i) = EXP(x(i))
  END DO

  RETURN
END SUBROUTINE exp_v

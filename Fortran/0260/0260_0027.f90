PROGRAM main
IMPLICIT type(integer*8) (M-N)
IMPLICIT type(integer*8) (d-F)
M=5
N=fact(M)
if(N/=120)print*,101
print*,'Pass'
CONTAINS
Recursive type(integer*8)  FUNCTION fact(d) result(ret)
IF (d > 0) THEN
 ret= D * fact(d-1)
ELSE
 ret = 1
END IF
END function FACT
END PROGRAM Main
                   


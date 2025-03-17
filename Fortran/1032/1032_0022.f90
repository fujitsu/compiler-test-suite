PROGRAM MAIN
  REAL, DIMENSION(2,10) :: a
  REAL, DIMENSION(30) :: b
  equivalence(a,b)
  b=1
  a=-1
  CALL test_sub(a(1,:), a(2,:))
  if (any(a(1,:)/=-1))write(6,*) "NG"
  if (any(a(2,:)/=-100))write(6,*) "NG"
  if (any(b(21:30)/=1))write(6,*) "NG"
print *,'pass'

CONTAINS

  SUBROUTINE test_sub(zin, zout)
    REAL, INTENT(IN)    :: zin(:)
    REAL, INTENT(OUT)   :: zout(:)

    DO ip = 1,size(zin)
       if (zin(ip)/=-1)write(6,*) "NG"
    END DO
    DO ip = 1,size(zout)
       zout(ip)  = -100
    END DO

  END SUBROUTINE test_sub

END PROGRAM MAIN

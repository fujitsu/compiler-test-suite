PROGRAM MAIN
  REAL, DIMENSION(2,10), TARGET :: testar
  REAL, DIMENSION(:), POINTER :: ztest1, ztest2

  ztest1 => testar(1,:)
  ztest2 => testar(2,:)
  ztest1(1:10) = 0.0
  CALL test_sub(ztest1, ztest2)
print *,'pass'

CONTAINS

  SUBROUTINE test_sub(zin, zout)
    REAL, INTENT(IN)    :: zin(:)
    REAL, INTENT(OUT)   :: zout(:)
    INTEGER :: ip

    DO ip = 1,10
       if(zin(ip)/=0.)print *,'error'
    END DO
    DO ip = 1,10
       zout(ip)  = ip
    END DO

  END SUBROUTINE test_sub

END PROGRAM MAIN

PROGRAM MAIN
  integer, DIMENSION(3,5,4) :: a
  integer, DIMENSION(70) :: b
  equivalence(a,b)
  b=1
  a=-1
  CALL test_sub(a(:,1,:), a(:,2,:))
  if (any(a(:,1,:)/=-1))write(6,*) "NG"
  if (any(a(:,2,:)/=-100))write(6,*) "NG"
  if (any(b(size(a)+1:)/=1))write(6,*) "NG"
print *,'pass'

CONTAINS

  SUBROUTINE test_sub(zin, zout)
    integer, INTENT(IN)    :: zin(:,:)
    integer, INTENT(OUT)   :: zout(:,:)

    DO i1 = 1,size(zin,dim=2)
    DO i2 = 1,size(zin,dim=1)
       if (zin(i2,i1)/=-1)write(6,*) "NG"
    END DO
    END DO
    DO i1 = 1,size(zout,dim=2)
    DO i2 = 1,size(zout,dim=1)
       zout(i2,i1)  = -100
    END DO
    END DO

  END SUBROUTINE test_sub

END PROGRAM MAIN

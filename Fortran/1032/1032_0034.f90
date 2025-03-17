PROGRAM MAIN
  INTEGER, DIMENSION(3,3) :: a
  INTEGER, DIMENSION(30) :: b
  equivalence(a,b)
  b=1
  a=-1;j=0
  CALL test_sub(a(2,:),j)
  if (any(a(1,:)/=-1))write(6,*) "NG"
  if (any(a(2,:)/=-100))write(6,*) "NG"
  if (any(b(21:30)/=1))write(6,*) "NG"
  if (j/=-5)write(6,*) "NG"
  b=1
  a=-1;j=0
  CALL test_sub(a(:,2),j)
  if (any(a(:,1)/=-1))write(6,*) "NG"
  if (any(a(:,2)/=-100))write(6,*) "NG"
  if (any(b(21:30)/=1))write(6,*) "NG"
  if (j/=-5)write(6,*) "NG"
print *,'pass'

CONTAINS

  SUBROUTINE test_sub(zout,i)
    INTEGER, INTENT(OUT)   :: zout(:),i

    zout  = -100
    i  = -5

  END SUBROUTINE test_sub

END PROGRAM MAIN

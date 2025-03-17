PROGRAM MAIN
  INTEGER, DIMENSION(3,5,4) :: a,aa,aaa,aaaa
  INTEGER, DIMENSION(90) :: b
  equivalence(a,b)
  b=1
  a=-1;aa=-1;aaa=-1;j=0;aaaa=-1
  CALL test_sub(a(2,:,:),j,aa(:,:,2),aaa(:,:,2),aaaa(2,:,:))
  if (any(a(1,:,:)/=-1))write(6,*) "NG"
  if (any(a(2,:,:)/=-100))write(6,*) "NG"
  if (any(b(size(a)+1:)/=1))write(6,*) "NG"
  if (any(aa(:,:,2)/=-100))write(6,*) "NG"
  if (any(aaa(:,:,2)/=-100))write(6,*) "NG"
  if (any(aaaa(2,:,:)/=-100))write(6,*) "NG"
  if (j/=-5)write(6,*) "NG"
  b=1
  a=-1;aa=-1;aaa=-1;j=0;aaaa=-1
  CALL test_sub(a(:,:,2),j,aa(2,:,:),aaa(2,:,:),aaaa(:,:,2))
  if (any(a(:,:,1)/=-1))write(6,*) "NG"
  if (any(a(:,:,2)/=-100))write(6,*) "NG"
  if (any(b(size(a)+1:)/=1))write(6,*) "NG"
  if (any(aa(2,:,:)/=-100))write(6,*) "NG"
  if (any(aaa(2,:,:)/=-100))write(6,*) "NG"
  if (any(aaaa(:,:,2)/=-100))write(6,*) "NG"
  if (j/=-5)write(6,*) "NG"
print *,'pass'

CONTAINS

  SUBROUTINE test_sub(zout,i,zout2,zout3,zout4)
    INTEGER, INTENT(OUT) :: zout(:,:),i,zout2(:,:),zout3(:,:),zout4(:,:)

    zout  = -100
    zout2 = -100
    zout3 = -100
    zout4 = -100
    i  = -5

  END SUBROUTINE test_sub

END PROGRAM MAIN

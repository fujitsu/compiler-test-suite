program test
  implicit none
  real*4 A(1:10)
  real*4 B(1:10)
  real*8 C(1:10)

  real*4 X(1:10)
  real*4 Y(1:10)
  real*8 Z(1:10)
  integer*4 k
  common /com/ A,B,C,X,Y,Z
  
  A=0
  B=2
  C=3
  X=0
  Y=2
  Z=3

  do k=1,10,2
     A(k) = B(k) + C(k)
     X(k) = Y(k) + Z(k)
  end do
  
  do k=1,10
     if (A(k) .ne. X(k)) then
        print *, "NG"
     end if
  end do
  print *, "OK"
end program test


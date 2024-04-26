module m1
type ty
  integer :: n(2)
  real :: x(2)
end type ty
type(ty),parameter:: obj=ty([1,2],[1.0,2.0])
end module m1

program pro
use m1
implicit none
  real :: y(2)=BESSEL_JN(obj%n,obj%x)
   if( .not.(y(1)>0.43 .and. y(1)<0.45))  print *,101
   if( .not.(y(2)>0.34 .and. y(2)<0.36))  print *,102
    print*,"pass"
end

! 2D Array, DSE CASE
! Module Used
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
  real :: y(2)=BESSEL_YN(obj%n,obj%x)
   if( .not.(y(1)<-0.77 .and. y(1)>-0.79))  print *,101
   if( .not.(y(2)<-0.60 .and. y(2)>-0.62))  print *,102
    print*,"pass"
end

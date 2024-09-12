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
  integer::y= rank(a=obj%n)
  integer::z= rank(A=obj%x)
   if(y.ne.1)  print *,101
   if(z.ne.1)  print *,102
    print*,"pass"
end

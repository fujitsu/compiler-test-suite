module m1
  class(*), allocatable :: arr(:,:)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
allocate(real(kind=8) :: arr(2,2))
select type(arr)
type is (real(kind=8))
arr(1,1)= 10.4
arr(1,2)= 20.0
arr(2,1)= 10.8
arr(2,2)= 20.2
x=ERFC_SCALED(x=arr)
class default
print*,105
end select
if( .not.(x(1,1)>0.053 .and. x(1,1)<0.056))  print *,101,x
if( .not.(x(1,2)>0.027 .and. x(1,2)<0.029))  print *,102
if( .not.(x(2,1)>0.051 .and. x(2,1)<0.053))  print *,103
if( .not.(x(2,2)>0.026 .and. x(2,2)<0.028))  print *,104

print*,"pass"
end

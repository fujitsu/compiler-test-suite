module m1
type ty
  real :: arr(2,2)
  real :: x(2,2)
end type ty
type(ty):: obj
end module m1

program pro
use m1
implicit none
  obj%arr(1,1)= 3.0
  obj%arr(1,2)= 4.4
  obj%arr(2,1)= 5.8
  obj%arr(2,2)= 7.2

obj%x=LOG_GAMMA(LOG_GAMMA(obj%arr))
        if( .not.(obj%x(1,1)>0.25 .and. obj%x(1,1)<0.27))  print *,101,obj%x
        if( .not.(obj%x(2,1)>2.37 .and. obj%x(2,1)<2.39))  print *,102
        if( .not.(obj%x(1,2)>0.15 .and. obj%x(1,2)<0.17))  print *,103
        if( .not.(obj%x(2,2)>6.48 .and. obj%x(2,2)<6.50))  print *,104
        print*,"pass"
end

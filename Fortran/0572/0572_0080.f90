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
obj%arr(1,1)= 10.4
obj%arr(1,2)= 20.0
obj%arr(2,1)= 10.8
obj%arr(2,2)= 20.2
obj%x=ERFC_SCALED(ERFC_SCALED(obj%arr))
        if( .not.(obj%x(1,1)>0.93 .and. obj%x(1,1)<0.95))  print *,101,obj%x
        if( .not.(obj%x(2,1)>0.93 .and. obj%x(2,1)<0.95))  print *,102
        if( .not.(obj%x(1,2)>0.95 .and. obj%x(1,2)<0.97))  print *,103
        if( .not.(obj%x(2,2)>0.95 .and. obj%x(2,2)<0.97))  print *,104
        print*,"pass"
end

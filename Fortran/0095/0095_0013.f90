module m1
type ty
real :: arr1(2)
real*8:: arr2(2)
real*16:: arr3(2)
real :: x1(2),x2(2),x3(2)
end type ty
type(ty):: obj
end module m1

program pro
use m1
implicit none
obj%arr1(1)= 3.0
obj%arr1(2)= 3.8
obj%arr2(1)= 3.0
obj%arr2(2)= 3.8
obj%arr3(1)= 3.0
obj%arr3(2)= 3.8
obj%x1=LOG_GAMMA(obj%arr1)
obj%x2=LOG_GAMMA(obj%arr2)
obj%x3=LOG_GAMMA(obj%arr3)
   if( .not.(obj%x1(1)>0.68 .and. obj%x1(1)<0.70))  print *,101
   if( .not.(obj%x1(2)>1.53 .and. obj%x1(2)<1.55))  print *,102

   if( .not.(obj%x2(1)>0.68 .and. obj%x2(1)<0.70))  print *,201
   if( .not.(obj%x2(2)>1.53 .and. obj%x2(2)<1.55))  print *,202

   if( .not.(obj%x3(1)>0.68 .and. obj%x3(1)<0.70))  print *,301
   if( .not.(obj%x3(2)>1.53 .and. obj%x3(2)<1.55))  print *,302

   print*,"pass"
end

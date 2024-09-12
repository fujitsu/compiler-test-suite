program main
class(*),pointer :: unlim(:,:,:,:)
complex,target :: ch(2,2,3,2)
integer :: stat = 0

unlim => ch
stat = fun(unlim)

if(stat/=1 .or. ch(2,1,3,1) /=(1.0,-2.0)) then
 print*,101
else
 print*,'PASS'
endif

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy(2,2,3,2)
 if(sizeof(dmy) /= (8*24)) print*,'201'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(complex)
  dmy=(0.0,0.0)
  dmy(2,1,3,1)=(1.0,-2.0)
  fun=1
end select  
end function

end

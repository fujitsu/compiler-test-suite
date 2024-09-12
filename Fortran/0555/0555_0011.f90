program main
interface
subroutine actdmy(unlim)
 class(*) :: unlim(:,:,:,:)
end subroutine
end interface
complex :: ch(2,2,3,2)

call actdmy(ch)
end program

subroutine actdmy(unlim)
class(*) :: unlim(:,:,:,:)
integer :: stat = 0

stat = fun(unlim)

select type(unlim)
type is(complex)
if(stat/=1 .or. unlim(2,1,3,1) /=(1.0,-2.0)) then
 print*,101
else
 print*,'PASS'
endif
end select

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

end subroutine

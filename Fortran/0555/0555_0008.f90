program main
character :: ch='a'
call actdmy(ch)

contains
subroutine actdmy(unlim)
class(*) :: unlim
integer :: stat = 0

stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 1) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy/='a') print*,203
  fun=1
end select  
end function
end

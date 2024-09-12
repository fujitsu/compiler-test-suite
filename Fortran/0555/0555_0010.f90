program main
interface
function actdmy(unlim)
 class(*) :: unlim
 integer :: actdmy
end function
end interface

if(actdmy('xname'(2:5))==1) print*,'PASS3'
end program

function actdmy(unlim)
class(*) :: unlim
integer :: actdmy,stat = 0

stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
 actdmy=1
endif

select type(unlim)
type is(character(*))
if(unlim=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 4) print*,'201'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  fun=1
end select  
end function

end

program main
class(*),pointer :: unlim
character,target :: ch
integer :: stat = 0

unlim => ch
stat = fun(unlim)

if(stat/=1 .or. ch /='a') then
 print*,101
else
 print*,'PASS'
endif

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 1) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='a'
  fun=1
end select  
end function

end
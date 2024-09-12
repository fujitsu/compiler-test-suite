program main
class(*),allocatable :: unlim
character :: ch
integer :: stat = 0

ch='x'

allocate(unlim,source = ch)
stat = fun(unlim)

select type(unlim)
type is(character(*))
if(stat/=1 .or. unlim /='a') then
 print*,101
else
 print*,'PASS'
endif
end select

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

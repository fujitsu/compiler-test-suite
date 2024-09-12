program main
class(*),allocatable :: unlim
character(len=5) :: ch
integer :: stat = 0
ch='xxxxx'

allocate(unlim,source = ch)
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

select type(unlim)
type is(integer)
 print*,'100'
type is(character(*))
if(unlim=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
class default
 print*,'100default'
end select

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 5) print*,'201'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='name'
  fun=1
end select  
end function

end

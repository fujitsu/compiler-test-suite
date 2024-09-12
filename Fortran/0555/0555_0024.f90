program main


if(stat(ch())/=1) then
 print*,101
else
 print*,'PASS'
endif

contains
function stat(unlim)
class(*) :: unlim
integer :: stat
stat = 0

selecttype(unlim)
type is(character(*))
if(unlim/='b') print*,102
end select
stat = fun(unlim)
end function

function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 1) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy/='b')print*,203
  fun=1
end select  
end function

function ch()
character,pointer :: ch
allocate(ch)
ch='b'
end function
end

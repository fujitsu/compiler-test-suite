program main
class(*),pointer :: unlim
integer :: stat = 0

unlim => ch()

if(ch()/='b') print*,102

stat = fun(unlim)

if(stat/=1) then
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

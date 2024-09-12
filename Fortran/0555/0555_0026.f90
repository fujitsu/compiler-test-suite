program main

interface
function ch(dum)
character(len=5),pointer :: ch
character(len=4)::dum
end function
end interface

if(stat(ch('xnamexxxx'(2:5)))/=1) then
 print*,101
else
 print*,'PASS'
endif

contains
function stat(unlim)
class(*) :: unlim
integer :: stat
stat = 0
stat = fun(unlim)
end function

function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 5) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy/='name') print*,203
  fun=1
end select  
end function

end

function ch(dum)
character(len=5),pointer :: ch
character(len=4)::dum
allocate(ch)
ch=dum
end function

program main
character(len=5)::xx(3)

xx=['null','name','null']
if(stat(ch(xx))/=1) then
 print*,101
else
 print*,'PASS'
endif

contains
function stat(unlim)
class(*) :: unlim(:)
integer :: stat
stat = 0
stat = fun(unlim)
end function

function fun(dmy)
 integer :: fun
 class(*):: dmy(:)
 if(sizeof(dmy) /= 5*3) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy(2)/='name') print*,203
  fun=1
end select  
end function

function ch(dum)
 character(len=:),pointer :: ch(:)
 character(len=5),target :: dum(:)
 ch => dum
end function
end

program main
class(*),allocatable :: act2(:)
call s(act2)

contains
subroutine s(unlim)
class(*),allocatable :: unlim(:)
integer :: stat = 0
character(len=5)::xx(3)

xx=['null','name','null']
allocate(unlim,source = ch(xx))
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif
end subroutine

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

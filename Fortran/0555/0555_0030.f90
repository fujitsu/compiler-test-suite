program main
character(len=:),pointer :: act(:,:,:)

interface
function ch(dum)
character(len=:),pointer :: ch(:,:,:)
character(len=:),pointer :: dum(:,:,:)
end function
end interface

call s(act)

contains
subroutine s(xx)
character(len=:),pointer :: xx(:,:,:)
allocate(character(len=5)::xx(7,2,4))
  xx='null'
  xx(6,1,3)='name'
call actdmy(ch(xx))
end subroutine

subroutine actdmy(unlim)
integer :: stat = 0
class(*) :: unlim(:,:,:)
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:,:)
 if(sizeof(dmy) /= 5*56) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy(6,1,3)/='name') print*,203
  fun=1
end select  
end function
end

function ch(dum)
character(len=:),pointer :: ch(:,:,:)
character(len=:),pointer :: dum(:,:,:)
ch=>dum
end function

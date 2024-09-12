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
type tt
 class(*),allocatable :: unlim(:,:,:)
end type

type(tt)::obj
character(len=:),pointer :: xx(:,:,:)
integer :: stat = 0

allocate(character(len=5)::xx(7,2,4))
  xx='null'
  xx(6,1,3)='name'
allocate(obj%unlim,source = ch(xx))
stat = fun(obj%unlim)

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

program main
character(len=:),pointer :: act(:,:,:)

interface
subroutine s(ch)
character(len=:),pointer :: ch(:,:,:)
end subroutine
end interface

call s(act)
end

subroutine s(ch)
character(len=:),pointer :: ch(:,:,:)

interface
subroutine s2(unlim)
class(*) :: unlim(:,:,:)
end subroutine
end interface

allocate(character(len=5)::ch(4,5,6))
call s2(ch)
end subroutine

subroutine s2(unlim)
class(*) :: unlim(:,:,:)
integer :: stat = 0

interface
function fun(dmy)
 integer :: fun
 class(*):: dmy(4,5,6)
end function
end interface

stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

selecttype(unlim)
type is(character(*))
if(unlim(2,4,3)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(4,5,6)
 if(sizeof(dmy) /= 5*120) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(2,4,3)='name'
  fun=1
end select  
end function

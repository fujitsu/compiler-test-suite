program main
character(len=:),pointer :: act(:,:,:)
call s(act)

contains
subroutine s(ch)
class(*),allocatable :: unlim(:,:,:)
character(len=:),pointer :: ch(:,:,:)
integer :: stat = 0

allocate(character(len=5)::ch(4,5,6))
ch='xxxxx'
allocate(unlim,source = ch)
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

select type(unlim)
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
end

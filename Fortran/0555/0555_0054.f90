program main
class(*),allocatable :: act2(:,:)
call s(act2)

contains
subroutine s(unlim)
class(*),allocatable :: unlim(:,:)
type tt
 character(len=:),pointer :: ch(:,:)
end type
integer :: stat = 0

type(tt)::obj

allocate(character(len=5)::obj%ch(4,6))
obj%ch='xxxxx'

allocate(unlim,source = obj%ch)
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

selecttype(unlim)
type is(character(*))
if(unlim(4,3)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
type is(complex)
 print*,'100a'
class default
 print*,'100b'
end select
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:)
 if(sizeof(dmy) /= 5*24) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(4,3)='name'
  fun=1
end select  
end function
end

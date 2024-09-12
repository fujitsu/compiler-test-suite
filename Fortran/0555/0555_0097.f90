program main
class(*),pointer :: act2(:,:)
call s(act2)

contains
subroutine s(unlim)
class(*),pointer :: unlim(:,:)
type tt
 character(len=:),pointer :: ch(:,:)
end type
integer :: stat = 0

type(tt)::obj

allocate(character(len=5)::obj%ch(4,6))
unlim => obj%ch
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(obj%ch(4,3)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
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

program main
call s2(5)

contains
subroutine s2(n)
character(len=n),pointer :: ch(:,:,:,:)
allocate(ch(2,3,4,2))
call s(ch)
end subroutine

subroutine s(unlim)
class(*) :: unlim(:,:,:,:)

integer :: stat = 0

stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

select type(unlim)
type is(character(*))
if(unlim(1,2,3,1)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:,:,:)
 if(sizeof(dmy) /= 5*48) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(1,2,3,1)='name'
  fun=1
end select  
end function
end

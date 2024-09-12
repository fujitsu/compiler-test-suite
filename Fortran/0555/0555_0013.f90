program main
character(len=5),pointer :: act1

interface
subroutine s(unlim)
class(*) :: unlim
end subroutine
end interface

allocate(act1)
call s2(act1)

contains
subroutine s2(ch)
 character(len=*),pointer :: ch
 call s(ch)
end subroutine
end

subroutine s(unlim)
class(*) :: unlim
integer :: stat = 0

interface
function fun(dmy)
 integer :: fun
 class(*):: dmy
end function
end interface

stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

select type(unlim)
type is(character(*))
if(unlim=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 5) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy='name'
  fun=1
end select  
end function

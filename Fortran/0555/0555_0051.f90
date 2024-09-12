program main
class(*),allocatable :: act2
call s(act2,5)

contains
subroutine s(unlim,n)
class(*),allocatable :: unlim
character(len=n) :: ch
integer :: stat = 0
ch='xxxx'
allocate(unlim,source= ch)
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
class default
 print*,100
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
end

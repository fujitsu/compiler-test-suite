program main
interface
subroutine actdmy(unlim)
class(*) :: unlim(:,:)
end subroutine
end interface

call s(5)

contains
subroutine s(n)
character(len=n) :: xx(5,3)
  xx='null'
  xx(3,2)='name'
call actdmy(ch(xx,n))
end subroutine

function ch(dum,num)
character(len=num),pointer :: ch(:,:)
integer::num
character(len=num),target :: dum(5,3)
ch => dum
end function
end

subroutine actdmy(unlim)

interface
function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:)
end function
end interface

class(*) :: unlim(:,:)
integer :: stat = 0
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:)
 if(sizeof(dmy) /= 5*15) print*,'201'

 fun=0
 
 select type(dmy)
  type is(integer)
   print*,'202'
  type is(character(*))
   if(dmy(3,2)/='name') print*,203
   fun=1
 end select  
end function

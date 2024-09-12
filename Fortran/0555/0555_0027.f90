program main

interface
function ch(dum)
complex,pointer :: ch(:,:,:,:)
complex,target :: dum(:,:,:,:)
end function
end interface

complex:: xx(2,2,3,2)
xx=(0.0,0.0)
xx(2,1,3,1)=(1.0,-2.0)
call actdmy(ch(xx))

contains
subroutine actdmy(unlim)
class(*) :: unlim(:,:,:,:)
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
 class(*):: dmy(2,2,3,2)
 if(sizeof(dmy) /= (8*24)) print*,'201'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(complex)
  if(dmy(2,1,3,1)/=(1.0,-2.0)) print*,203
  fun=1
end select  
end function

end

function ch(dum)
complex,pointer :: ch(:,:,:,:)
complex,target :: dum(:,:,:,:)
ch=>dum
end function

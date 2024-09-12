program main
class(*),allocatable :: act(:,:)
call s(act)

contains
subroutine s(unlim)
class(*),allocatable :: unlim(:,:)
integer :: stat = 0

allocate(unlim,source = ch(reshape([2,3,5,6],[2,2])))
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(2,2)
 if(sizeof(dmy) /= (4*4)) print*,'201'
 fun=0
 
select type(dmy)
 type is(complex)
  print*,'202'
 type is(integer)
  if(dmy(2,1)/=3) print*,203
  fun=1
end select  
end function

function ch(dum)
integer,pointer :: ch(:,:)
integer,target :: dum(:,:)
ch=>dum
end function
end

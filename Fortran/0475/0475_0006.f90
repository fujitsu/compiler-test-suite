program main
type tt
 integer::i
end type

type(tt) :: act(2,3,4,5,6)
call s(act)

print *,'pass'
contains
subroutine s(ch)
class(*),pointer :: unlim(:,:,:,:,:)
type(tt),target :: ch(2,3,4,5,6)
integer :: stat = 0

ch=tt(0)
unlim=>ch
stat = fun(unlim)

if(stat/=1) then
 print*,101
else

endif

selecttype(unlim)
type is(tt)
if(unlim(2,2,3,3,2)%i==4) then

else
 print*,'102'
endif
end select
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(2,3,4,5,6)
 if(sizeof(dmy) /= 4*720) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(tt)
  dmy(2,2,3,3,2)=tt(4)
  fun=1
end select  
end function
end

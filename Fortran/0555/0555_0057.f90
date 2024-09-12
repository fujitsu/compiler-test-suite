program main
character(len=4) :: act(2,9,2)
call s(act,4)

contains
subroutine s(ch,n)
class(*),allocatable :: unlim(:,:,:)
character(len=n) :: ch(2,8,*)
integer :: stat = 0
ch(1:2,1:8,1:2)='xxxx'
allocate(unlim,source = ch(1:2,1:8,1:2))
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

selecttype(unlim)
type is(character(*))
if(unlim(2,4,1)=='name') then
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
 class(*):: dmy(:,:,:)
 if(sizeof(dmy) /= 16*4*2) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(2,4,1)='name'
  fun=1
end select  
end function
end

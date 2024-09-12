program main
character(len=5),allocatable :: act(:,:,:,:,:)
allocate(act(2,3,4,5,6))
call s(act)

contains
subroutine s(ch)
character(len=*),allocatable :: ch(:,:,:,:,:)
if(f1(ch)/=1) then
 print*,101
else
 print*,'PASS1'
endif

end subroutine

function f1(unlim)
class(*) :: unlim(:,:,:,:,:)
integer :: f1
f1=0 
f1 = fun(unlim)

select type(unlim)
type is(character(*))
if(unlim(2,2,3,3,2)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end function

function fun(dmy)
 integer :: fun
 class(*):: dmy(2,3,4,5,6)
 if(sizeof(dmy) /= 5*720) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(2,2,3,3,2)='name'
  fun=1
end select  
end function
end

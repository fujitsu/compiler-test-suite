program main
character(len=5) :: act1(2,4,1)
integer::x
x=f1(act1)
if(x==1) print*,'PASS3'

contains
function f1(ch)
integer f1
character(len=*) :: ch(:,:,:)
ch='null'
ch(2,3,1)='name'
call s(ch)
f1=1
end function

subroutine s(unlim)
class(*) :: unlim(:,:,:)
integer :: stat = 0

stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:,:)
 if(sizeof(dmy) /= 5*8) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy(2,3,1)=='name') then
   print*,'PASS2'
   fun=1
  else
   print*,203
  endif
end select  
end function
end

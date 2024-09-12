program main
class(*),pointer :: act2(:,:)
integer :: act1(2,2)
call s(act1,act2)

contains
subroutine s(ch,unlim)
class(*),pointer :: unlim(:,:)
integer,target :: ch(:,:)
integer :: stat = 0

unlim => ch
stat = fun(unlim)

if(stat/=1 .or. ch(2,1) /= 2) then
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
  dmy=0
  dmy(2,1)=2
  fun=1
end select  
end function

end

program main
integer :: act1(2,2)
call s(act1)

contains
subroutine s(unlim)
class(*) :: unlim(:,:)
integer :: stat = 0

stat = fun(unlim)

selecttype(unlim)
type is(integer)
if(stat/=1 .or. unlim(2,1) /= 2) then
 print*,101
else
 print*,'PASS'
endif
endselect
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

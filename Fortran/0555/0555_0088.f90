program main
class(*),pointer :: unlim
character(len=5),target :: ch
integer :: stat = 0

unlim => ch
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(ch=='name') then
 print*,'PASS2'
else
 print*,'102'
endif

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 5) print*,'201'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='name'
  fun=1
end select  
end function

end

program main
class(*),pointer :: unlim(:,:,:)
character,pointer :: ch(:,:,:)
integer :: stat = 0

allocate(ch(2,2,4))

unlim => ch
stat = fun(unlim)

if(stat/=1 .or.ch(1,1,3)/='c' ) then
 print*,101
else
 print*,'PASS'
endif

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy(2,2,4)
 if(sizeof(dmy) /= 16) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy=reshape(['a','b','c','a','b',&
               'c','a','b','c','a',&
               'b','c','a','b','c',&
               'd'],[2,2,4])
  fun=1
end select  
end function

end
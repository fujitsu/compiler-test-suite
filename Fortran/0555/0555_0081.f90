program main
class(*),pointer :: unlim(:,:,:)
character(kind=4,len=3)::check
integer :: stat = 0

check=4_'cab'
allocate(character(kind=4,len=3)::unlim(2,2,4))
stat = fun(unlim)

select type(unlim)
type is(character(len=*,kind=4))
if(stat/=1 .or. unlim(1,2,1) /= check) then
 print*,101,unlim(1,2,1),check
else
 print*,'PASS'
endif
end select

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy(2,2,4)
 if(sizeof(dmy) /= 16*4*3) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(kind=4,len=*))
  dmy=reshape([4_'abc',4_'bac',4_'cab',4_'abc',4_'bac',&
               4_'cab',4_'abc',4_'bac',4_'cab',4_'abc',&
               4_'bac',4_'cab',4_'abc',4_'bac',4_'cab',&
               4_'dba'],[2,2,4])
  fun=1
class default
 print*,'wrong choice'
end select  
end function
end

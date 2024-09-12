program main
character(kind=4,len=3) :: ch(2,2,4)

if(f1(ch)==1) print*,'PASS'

contains
function f1(unlim)
class(*) :: unlim(:,:,:)
integer :: f1
f1 = 0

f1 = fun(unlim)

select type(unlim)
 type is(character(kind=4,len=*))
  if(unlim(1,2,1) /= 4_'cab') print*,101
end select
end function

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
 type is(character(*))
  print*,'wrong choice1'

 class default
  print*,'wrong choice'
end select  
end function
end


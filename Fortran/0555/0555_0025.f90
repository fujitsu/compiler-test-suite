program main

interface
subroutine ss(unlim)
class(*) :: unlim(:,:,:)
end subroutine
end interface

call ss(ch())

contains
function ch()
character :: ch(2,2,4)
  ch=reshape(['a','b','c','a','b',&
              'c','a','b','c','a',&
              'b','c','a','b','c',&
              'd'],[2,2,4])
end function
end

subroutine ss(unlim)
class(*) :: unlim(:,:,:)
integer :: stat = 0

stat = fun(unlim)

if(stat/=1) then
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
  if(dmy(1,1,3)/='c') print*,203
  fun=1
end select  
end function
end subroutine

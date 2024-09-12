program main

interface
function stat(unlim)
class(*) :: unlim(:,:,:)
integer :: stat
end function

function ch(dum)
character(kind=4,len=3),pointer :: ch(:,:,:)
character(len=3,kind=4):: dum(2,2,4)
end function
end interface

character(len=3,kind=4):: xx(2,2,4)
xx=reshape([4_'abc',4_'bac',4_'cab',4_'abc',4_'bac',&
            4_'cab',4_'abc',4_'bac',4_'cab',4_'abc',&
            4_'bac',4_'cab',4_'abc',4_'bac',4_'cab',&
            4_'dba'],[2,2,4])

if(stat(ch(xx))/=1) then
 print*,101
else
 print*,'PASS'
endif
end

function stat(unlim)
class(*) :: unlim(:,:,:)
integer :: stat

stat=0
stat = fun(unlim)

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
  if(dmy(1,2,1)/=4_'cab') print*,203
  fun=1
end select  
end function

end

function ch(dum)
character(kind=4,len=3),pointer :: ch(:,:,:)
character(len=3,kind=4):: dum(2,2,4)
allocate(ch(2,2,4))
ch=dum
end function

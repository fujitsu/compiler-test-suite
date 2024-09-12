program main
interface
subroutine actdmy(unlim5,unlim,unlim2)
class(*) :: unlim(:,:,:,:)
class(*) :: unlim2(:,:)
class(*) :: unlim5(:,:,:,:,:)
end subroutine
end interface

complex :: xx(2,2,3,2)
character(len=4),target :: ch2(5,2)
character(len=:),pointer :: ch3(:,:,:)
character(len=4) :: ch4(3,2,5,4)
integer,target :: ch5(2,6,3,1,2)

interface
function ch(dum,dum3,dum4)
complex,pointer :: ch(:,:,:,:)
complex,target :: dum(:,:,:,:)
character(len=:),pointer :: dum3(:,:,:)
character(len=*) :: dum4(:,:,:,:)
end function
end interface

xx=(0.0,0.0)
xx(2,1,3,1)=(1.0,-2.0)
ch5=0
ch5(1,4,2,1,1)=5
ch2='null'
ch2(3,1)='name'
ch4='null'
ch4(2,1,3,1)='char'
allocate(character(len=4)::ch3(7,4,2))
ch3='null'
ch3(4,2,1)='var'

call actdmy(ch5,ch(dum=xx,dum3=ch3,dum4=ch4),ch2)
end

subroutine actdmy(unlim5,unlim,unlim2)
class(*) :: unlim(:,:,:,:)
class(*) :: unlim2(:,:)
class(*) :: unlim5(:,:,:,:,:)

integer :: stat = 0
stat = fun(unlim,unlim2,unlim5)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif

contains
function fun(dmy,dmy2,dmy5)
 integer :: fun,x=0
 class(*):: dmy(2,2,3,2)
 class(*):: dmy2(:,:)
 class(*):: dmy5(:,:,:,:,:)
 if(sizeof(dmy) /= (8*24)) print*,'201'
 if(sizeof(dmy2) /= (4*10)) print*,'202'
 if(sizeof(dmy5) /= (4*72)) print*,'205'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'206'
 type is(complex)
  if(dmy(2,1,3,1)/=(1.0,-2.0)) print*,207
  x=x+1
end select  
 
select type(dmy2)
 type is(integer)
  print*,'206'
 type is(character(*))
  if(dmy2(3,1)/='name') print*,208
  x=x+1
end select  
 
select type(dmy5)
 type is(character(*))
  print*,'206'
 type is(integer)
  if(dmy5(1,4,2,1,1)/=5) print*,211
  x=x+1
end select  
 
if(x==3)  fun=1
end function

end

function ch(dum,dum3,dum4)

interface
subroutine ss(d3,d4)
class(*) :: d3(:,:,:)
class(*) :: d4(:,:,:,:)
end subroutine
end interface

complex,pointer :: ch(:,:,:,:)
complex,target :: dum(:,:,:,:)
character(len=:),pointer :: dum3(:,:,:)
character(len=*) :: dum4(:,:,:,:)
ch=>dum
call ss(dum3,dum4)
end function

subroutine ss(d3,d4)
class(*) :: d3(:,:,:)
class(*) :: d4(:,:,:,:)
if(sizeof(d3)/=224 .or. sizeof(d4)/=480) print*,301
end subroutine

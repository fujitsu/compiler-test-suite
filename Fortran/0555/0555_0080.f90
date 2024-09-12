module mod1
type tt
 logical::l
 character(len=4),pointer::ch6(:,:,:)
end type

type tt2
 type(tt)::t2obj
 complex::x
end type

type tout
 type(tt2)::tobj
end type
end module

program main
use mod1
class(*),allocatable :: unlim(:,:,:,:)
class(*),allocatable :: unlim2(:,:)
class(*),allocatable :: unlim3(:,:,:)
class(*),allocatable :: unlim4(:,:,:,:)
class(*),allocatable :: unlim5(:,:,:,:,:)
class(*),allocatable :: unlim6(:,:,:)

type(tout)::obj
integer :: stat = 0
complex :: xx(2,2,3,2)
character(len=4),target :: ch2(5,2)
character(len=:),pointer :: ch3(:,:,:)
character(len=4) :: ch4(3,2,5,4)
integer,target :: ch5(2,6,3,1,2)

interface
function ch(dum)
complex :: ch(2,2,3,2)
complex :: dum(:,:,:,:)
end function
end interface

allocate(obj%tobj%t2obj%ch6(3,2,5))
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
obj%tobj%t2obj%ch6='null'
obj%tobj%t2obj%ch6(2,2,3)='name'

allocate(unlim5,source = ch5)
allocate(unlim,source  = ch(xx))
allocate(unlim2,source = ch2)
allocate(unlim3,source = ch3)
allocate(unlim4,source = ch4)
allocate(unlim6,source = obj%tobj%t2obj%ch6)
stat = fun(unlim,unlim2,unlim3,unlim4,unlim5,unlim6)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif

contains
function fun(dmy,dmy2,dmy3,dmy4,dmy5,dmy6)
 integer :: fun,x=0
 class(*):: dmy(2,2,3,2)
 class(*):: dmy2(:,:)
 class(*):: dmy3(:,:,:)
 class(*):: dmy4(:,:,:,:)
 class(*):: dmy5(:,:,:,:,:),dmy6(3,2,5)
 if(sizeof(dmy)  /= (8*24)) print*,'201'
 if(sizeof(dmy2) /= (4*10)) print*,'202'
 if(sizeof(dmy3) /= (4*56)) print*,'203'
 if(sizeof(dmy4) /= (4*120)) print*,'204'
 if(sizeof(dmy5) /= (4*72)) print*,'205'
 if(sizeof(dmy6) /= (30*4)) print*,'205a'
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
 
select type(dmy3)
 type is(integer)
  print*,'206'
 type is(character(*))
  if(dmy3(4,2,1)/='var') print*,209
  x=x+1
end select  
 
select type(dmy4)
 type is(integer)
  print*,'206'
 type is(character(*))
  if(dmy4(2,1,3,1)/='char') print*,210
  x=x+1
end select  
 
select type(dmy5)
 type is(character(*))
  print*,'206'
 type is(integer)
  if(dmy5(1,4,2,1,1)/=5) print*,211
  select type(dmy6)
   type is(character(*))
    if(dmy6(2,2,3)/='name') print*,212
    x=x+1
  endselect
end select  
 
if(x==5)  fun=1
end function

end

function ch(dum)
complex :: ch(2,2,3,2)
complex :: dum(:,:,:,:)
ch=dum
end function

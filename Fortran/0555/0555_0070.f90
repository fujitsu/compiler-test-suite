program main
type tt
 class(*),allocatable :: unlim(:,:)
 class(*),allocatable :: unlim2(:,:)
 class(*),allocatable :: unlim3(:,:)
 character(len=:),pointer :: ch3(:,:)
end type

type(tt)::obj
integer :: stat = 0
character :: xx(2,3)
character(len=4) :: ch2(5,2)

xx='x'
xx(2,3)='a'
ch2='null'
ch2(3,1)='name'
allocate(character(len=4)::obj%ch3(7,4))
obj%ch3='null'
obj%ch3(4,2)='var'

allocate(obj%unlim,source  = ch(xx,dum3=obj%ch3,dptr3=obj%unlim3))
allocate(obj%unlim2,source = ch2)
stat = fun(obj%unlim,obj%unlim2,obj%unlim3)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif

contains
function fun(dmy,dmy2,dmy3)
 integer :: fun,x=0
 class(*):: dmy(2,3)
 class(*):: dmy2(:,:)
 class(*):: dmy3(:,:)
 if(sizeof(dmy) /= (6)) print*,'201'
 if(sizeof(dmy2) /= (4*10)) print*,'202'
 if(sizeof(dmy3) /= (4*28)) print*,'203'
 fun=0
 
select type(dmy)
 type is(integer)
  print*,'206'
 type is(character(*))
  if(dmy(2,3)/='a') print*,207
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
  if(dmy3(4,2)/='var') print*,209
  x=x+1
end select  
 
if(x==3)  fun=1
end function

function ch(dum,dum3,dptr3)
character,pointer :: ch(:,:)
character,target :: dum(:,:)
character(len=:),pointer :: dum3(:,:)
class(*),allocatable :: dptr3(:,:)
ch=>dum
allocate(dptr3,source=dum3)
end function
end

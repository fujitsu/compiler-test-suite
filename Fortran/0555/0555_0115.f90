program main
character(len=5),target :: act(2,3,4,5,6)
character(len=5),target :: act2(4,1,4,3,5,2)
call s(act,act2)

contains
subroutine s(ch,ch2)
class(*),pointer :: unlim(:,:,:,:,:)
class(*),pointer :: unlim2(:,:,:,:,:,:)
character(len=*),target :: ch(2,3,4,5,6)
character(len=*),target :: ch2(:,:,:,:,:,:)
integer :: stat = 0

unlim => ch
unlim2=> ch2
stat = fun(unlim,unlim2)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(ch(2,2,3,3,2)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif

if(ch2(1,1,3,1,1,1)=='char') then
 print*,'PASS3'
else
 print*,'103'
endif
end subroutine

function fun(dmy,dmy2)
 integer :: fun
 class(*):: dmy(2,3,4,5,6),dmy2(:,:,:,:,:,:)
 if(sizeof(dmy) /= 5*720) print*,'200'
 if(sizeof(dmy2) /= 5*480) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(2,2,3,3,2)='name'
end select  
 
select type(dmy2)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy2='null'
  dmy2(1,1,3,1,1,1)='char'
  fun=1
end select  
end function
end

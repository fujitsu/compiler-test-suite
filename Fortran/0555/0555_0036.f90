program main
type tt
 integer::i
end type

character(len=5) :: act(2,3,4,5,6)
character(len=5) :: act2(4,1,4,3,5,2)
call s(act,act2)

contains
subroutine s(ch,ch2)
character(len=*) :: ch(2,3,4,5,6)
character(len=*) :: ch2(:,:,:,:,:,:)
if(stat(ch,ch2,tt(5))==1) print*,'PASS1'
end subroutine

function stat(unlim,unlim2,unlim3)
class(*) :: unlim(:,:,:,:,:)
class(*) :: unlim2(:,:,:,:,:,:)
class(*) :: unlim3
integer :: stat
stat = 0

stat = fun(unlim,unlim2,unlim3)

select type(unlim)
 type is(character(*))
 if(unlim(2,2,3,3,2)=='name') then
  print*,'PASS2'
 else
  print*,'102'
 endif

  select type(unlim2)
  type is(character(*))
  if(unlim2(1,1,3,1,1,1)=='char') then
   print*,'PASS3'
  else
   print*,'103'
  endif

   select type(unlim3)
     class is(tt)
     if(unlim3%i==5) print*,'PASS4'
   end select
  end select
end select
end function

function fun(dmy,dmy2,dmy3)
 integer :: fun
 class(*):: dmy(2,3,4,5,6),dmy2(:,:,:,:,:,:),dmy3
 if(sizeof(dmy) /= 5*720) print*,'200'
 if(sizeof(dmy2) /= 5*480) print*,'201'
 if(sizeof(dmy3) /= 4) print*,'202'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'203'
 type is(character(*))
  dmy='null'
  dmy(2,2,3,3,2)='name'
end select  
 
select type(dmy2)
 type is(integer)
  print*,'204'
 type is(character(*))
  dmy2='null'
  dmy2(1,1,3,1,1,1)='char'
  fun=1
end select  
end function
end

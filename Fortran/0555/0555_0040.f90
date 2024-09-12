program main
integer :: stat = 0
call s(5)

contains
subroutine s(n)
character(len=n) :: xx(5,3)
character(len=8) :: ch2(3,6,2)
integer :: ch3(2,3,7,1,3)
ch3=2
  ch2 = 'null'
  ch2(2,5,1) = 'var'
  xx = 'null'
  xx(3,2) = 'name'
call actdmy(ch(xx,n),ch2,ch3)
if(stat==1) print*,'PASS'
end subroutine

subroutine actdmy(unlim,unlim2,unlim3)
class(*) :: unlim(:,:)
class(*) :: unlim2(:,:,:)
class(*) :: unlim3(:,:,:,:,:)
stat = fun(unlim,unlim2,unlim3)
end subroutine

function fun(dmy,dmy2,dmy3)
 integer :: fun
 class(*):: dmy(:,:),dmy2(:,:,:),dmy3(:,:,:,:,:)
 integer::x=0

 if(sizeof(dmy) /= 5*15) print*,'201'
 if(sizeof(dmy2) /= 8*36) print*,'206'
 if(sizeof(dmy3) /= 4*126) print*,'207'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  if(dmy(3,2)/='name') print*,203
  select type(dmy2)
   type is(character(*))
    if(dmy2(2,5,1)/='var') then
      print*,204
    else
      x=1
    endif
  end select
  select type(dmy3)
   type is(integer)
    if(dmy3(2,2,5,1,2)/=2) print*,205
    if(x==1) fun=1
  end select
end select  
end function

function ch(dum,num)
character(len=num),pointer :: ch(:,:)
integer::num
character(len=num),target :: dum(5,3)
ch => dum
end function
end

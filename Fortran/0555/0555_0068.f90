program main
type tt
 integer::i
end type

class(*),allocatable :: act(:,:)
type(tt) :: act2(2,2,2,2,2)
act2=tt(6)
act2(1,1,2,1,1)=tt(5)
call s(act,5,act2)

contains
subroutine s(unlim,n,ch4)
class(*),allocatable :: unlim(:,:)
class(*),allocatable :: unlim2(:,:,:)
class(*),allocatable :: unlim3(:,:,:,:,:)
class(*),allocatable :: unlim4(:,:,:,:,:)
integer :: stat = 0
type(tt),target::ch4(:,:,:,:,:)
character(len=n) :: xx(5,3)
character(len=5),target :: ch2(3,6,2)
character(len=:),pointer :: ch3(:,:,:,:,:)

allocate(character(len=5)::ch3(2,3,7,1,3))

  ch2 = 'null'
  ch2(2,5,1) = 'var'
  ch3 = 'null'
  ch3(2,2,5,1,2) = 'char'
  xx = 'null'
  xx(3,2) = 'name'
allocate(unlim,source  = ch(xx,n))
allocate(unlim2,source = ch2)
allocate(unlim3,source = ch3)
allocate(unlim4,source = ch4)
stat = fun(unlim,unlim2,unlim3,unlim4)

if(stat/=1) then
 print*,101
else
 print*,'PASS'
endif

end subroutine

function fun(dmy,dmy2,dmy3,dmy4)
 integer :: fun
 class(*):: dmy(:,:)
 class(*):: dmy2(:,:,:)
 class(*):: dmy3(:,:,:,:,:)
 class(*):: dmy4(:,:,:,:,:)
 integer::x=0

 if(sizeof(dmy) /= 5*15) print*,'201'
 if(sizeof(dmy2) /= 5*36) print*,'206'
 if(sizeof(dmy3) /= 5*126) print*,'207'
 if(sizeof(dmy4) /= 4*32) print*,'208'

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
   type is(character(*))
    if(dmy3(2,2,5,1,2)/='char') print*,205
    select type(dmy4)
     type is(tt)
      if(dmy4(1,1,2,1,1)%i/=5) print*,209
    end select
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

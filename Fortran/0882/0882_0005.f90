program main
type t
 integer::i=0
 character,pointer :: tgt
 real :: r
end type

type t2
 integer::i2=0
 type(t) :: t2obj
end type

type t3
 integer::i3=0
 type(t2) ::t3obj
end type

type tout
 integer::i4=0
 type(t3)::t4obj
end type

class(*),allocatable :: act
class(*),allocatable :: act2(:,:)
class(*),allocatable :: act3(:,:,:)
class(*),allocatable :: act4(:,:,:)
class(*),allocatable :: act5
call s(act,5,act2,act3,act4,act5)

contains
subroutine s(unlim,n,unlim2,unlim3,unlim4,unlim5)
class(*),allocatable :: unlim
class(*),allocatable :: unlim2(:,:)
class(*),allocatable :: unlim3(:,:,:)
class(*),allocatable :: unlim4(:,:,:)
class(*),allocatable :: unlim5
character(len=n) :: ch
character(len=5) :: ch2(3,4)
character(len=:),allocatable:: ch3(:,:,:)
logical :: ch4(5,5,5)=.false.
type(tout)::ch5

integer :: stat = 0

ch='xxxx'
ch2='xxxx'
allocate(character(len=5)::ch3(4,4,4))
ch3='xxxx'
allocate(ch5%t4obj%t3obj%t2obj%tgt)
ch5%i4=4
ch5%t4obj%t3obj%t2obj%tgt = 'a'

allocate(unlim,source = ch)
allocate(unlim2,source= ch2)
allocate(unlim3,source= ch3)
allocate(unlim4,source= ch4)
allocate(unlim5,source= ch5%t4obj%t3obj%t2obj%tgt)

stat = fun(dmy=unlim,dmy2=unlim2,dmy3=unlim3,dmy4=unlim4,dmy5=unlim5)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

selecttype(unlim)
type is(character(*))
if(unlim=='name') then
 print*,'PASS2'
else
 print*,'102'
endif

selecttype(unlim2)
type is(character(*))
if(unlim2(2,4)=='char') then
 print*,'PASS3'
else
 print*,'103'
endif

selecttype(unlim3)
type is(character(*))
if(unlim3(4,2,3)=='var') then
 print*,'PASS4'
else
 print*,'104'
endif

selecttype(unlim4)
type is(logical)
if(unlim4(3,1,2).eqv..true.) then
 print*,'PASS5'
else
 print*,'105'
endif

selecttype(unlim5)
type is(character(*))
if(unlim5.eq.'a') then
 print*,'PASS6'
else
 print*,'106'
endif
class default
endselect
endselect
endselect
endselect
endselect
end subroutine

function fun(dmy,dmy2,dmy3,dmy4,dmy5)
 integer :: fun
 class(*):: dmy,dmy2(3,4),dmy3(:,:,:),dmy4(:,:,:),dmy5
 if(sizeof(dmy) /= 5) print*,'201','dmy',sizeof(dmy)
 if(sizeof(dmy2) /= 5*12) print*,'202','dmy2',sizeof(dmy2)
 if(sizeof(dmy3) /= 4*64) print*,'203','dmy3',sizeof(dmy3)
 if(sizeof(dmy4) /= 4*125) print*,'204'
 if(sizeof(dmy5) /= 1) print*,'204a'

 fun=0

select type(dmy)
 type is(integer)
  print*,'205'
 type is(character(*))
  dmy='name'
  select type(dmy2)
   type is(character(*))
    dmy2='null'
    dmy2(2,4)='char'
    select type(dmy3)
     type is(character(*))
      dmy3='null'
      dmy3(4,2,3)='var'
      select type(dmy4)
       type is(logical)
        dmy4=.false.
        dmy4(3,1,2)=.true.
        select type(dmy5)
         type is(character(*))
          dmy5='a'
          fun=1
        endselect
      end select
    end select
  end select
end select 
end function
end

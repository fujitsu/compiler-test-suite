program main
type t
 integer::i
 character,pointer :: tgt
 real :: r
end type

type t2
 integer::i2
 type(t) :: t2obj
end type

type t3
 integer::i3
 type(t2) ::t3obj
end type

type tout
 integer::i4
 type(t3)::t4obj
end type

class(*),pointer :: act
class(*),pointer :: act2(:,:)
class(*),pointer :: act3(:,:,:)
class(*),pointer :: act4(:,:,:)
class(*),pointer :: act5
call s(act,5,act2,act3,act4,act5)

contains
subroutine s(unlim,n,unlim2,unlim3,unlim4,unlim5)
class(*),pointer :: unlim
class(*),pointer :: unlim2(:,:)
class(*),pointer :: unlim3(:,:,:)
class(*),pointer :: unlim4(:,:,:)
class(*),pointer :: unlim5
character(len=n),target :: ch
character(len=5),target :: ch2(3,4)
character(len=:),pointer:: ch3(:,:,:)
logical,target :: ch4(5,5,5)
type(tout)::ch5

integer :: stat = 0

allocate(character(len=5)::ch3(4,4,4))
allocate(ch5%t4obj%t3obj%t2obj%tgt)
unlim => ch
unlim2=> ch2
unlim3=> ch3
unlim4=> ch4
unlim5=> ch5%t4obj%t3obj%t2obj%tgt

stat = fun(dmy=unlim,dmy2=unlim2,dmy3=unlim3,dmy4=unlim4,dmy5=unlim5)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(ch=='name') then
 print*,'PASS2'
else
 print*,'102'
endif

if(ch2(2,4)=='char') then
 print*,'PASS3'
else
 print*,'103'
endif

if(ch3(4,2,3)=='var') then
 print*,'PASS4'
else
 print*,'104'
endif

if(ch4(3,1,2).eqv..true.) then
 print*,'PASS5'
else
 print*,'105'
endif

if(ch5%t4obj%t3obj%t2obj%tgt.eq.'a') then
 print*,'PASS6'
else
 print*,'106'
endif

end subroutine

function fun(dmy,dmy2,dmy3,dmy4,dmy5)
 integer :: fun
 class(*):: dmy,dmy2(3,4),dmy3(:,:,:),dmy4(:,:,:),dmy5
 if(sizeof(dmy) /= 5) print*,'201','dmy',sizeof(dmy)
 if(sizeof(dmy2) /= 5*12) print*,'202','dmy2',sizeof(dmy2)
 if(sizeof(dmy3) /= 5*64) print*,'203','dmy3',sizeof(dmy3)
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

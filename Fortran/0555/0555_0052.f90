program main
character(len=5) :: temp
call s(5)

contains
subroutine s(n)
type tt
 class(*),allocatable :: unlim(:,:,:,:)
end type

type ttout
 type(tt)::tobj
end type

character(len=n),allocatable :: ch(:,:,:,:)

integer :: stat = 0
type(ttout) :: obj

allocate(ch(2,3,4,2))
ch='xxxxx'
allocate(obj%tobj%unlim,source = ch)
stat = fun(obj%tobj%unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(temp=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:,:,:)
 if(sizeof(dmy) /= 5*48) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(1,2,3,1)='name'
  temp=dmy(1,2,3,1)
  fun=1
end select  
end function
end

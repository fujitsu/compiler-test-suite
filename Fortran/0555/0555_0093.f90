program main
type tt
 class(*),pointer :: unlim(:,:,:,:,:)
 character(len=4),pointer :: ch(:,:,:,:,:)
end type

type(tt) :: obj
integer :: stat = 0

allocate(obj%ch(3,2,4,1,4))

obj%unlim => obj%ch
stat = fun(obj%unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(obj%ch(2,2,4,1,3)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif

contains
function fun(dmy)
 integer :: fun
 class(*):: dmy(3,2,4,1,4)
 if(sizeof(dmy) /= 4*96) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(2,2,4,1,3)='name'
  fun=1
end select  
end function
end

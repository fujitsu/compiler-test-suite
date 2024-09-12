program main
type tt
 character(len=4),pointer :: ch(:,:,:,:,:)
end type
type(tt) :: obj
allocate(obj%ch(3,2,4,1,4))

if(stat(obj%ch)/=1) then
 print*,101
else
 print*,'PASS1'
endif

contains
function stat(unlim)
 class(*) :: unlim(:,:,:,:,:)

integer :: stat
stat = 0
stat = fun(unlim)

select type(unlim)
type is(character(*))
if(unlim(2,2,4,1,3)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end function

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

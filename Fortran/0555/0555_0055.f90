program main
character(len=5) :: act1(2,4,1)
class(*),allocatable :: act2(:,:,:)
call s(act1,act2)

contains
subroutine s(ch,unlim)
class(*),allocatable :: unlim(:,:,:)
character(len=*) :: ch(:,:,:)
integer :: stat = 0
ch='xxxxx'
allocate(unlim,source = ch)
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

select type(unlim)
type is(logical)
print*,100
type is (character(*))
if(unlim(2,3,1)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
endselect
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:,:)
 if(sizeof(dmy) /= 5*8) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(2,3,1)='name'
  fun=1
end select  
end function
end

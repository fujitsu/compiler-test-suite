program main
type tt
 integer::i
end type

character(len=5) :: act1
class(*),allocatable :: act2
call s(act1,act2)

contains
subroutine s(ch,unlim)
class(*),allocatable :: unlim
character(len=*) :: ch
integer :: stat = 0
ch='xxxxx'
allocate(unlim,source = ch)
stat = fun(unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

selecttype(unlim)
typeis(complex)
print*,'100a'
classis(tt)
print*,'100b'
type is(character(*))
if(unlim=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end subroutine

function fun(dmy)
 integer :: fun
 class(*):: dmy
 if(sizeof(dmy) /= 5) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy='name'
  fun=1
end select  
end function
end

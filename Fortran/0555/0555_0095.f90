program main
call s(5)

contains
subroutine s(n)
type tt
 class(*),pointer :: unlim(:,:,:,:)
end type
character(len=n),pointer :: ch(:,:,:,:)

integer :: stat = 0
type(tt) :: obj

allocate(ch(2,3,4,2))

obj%unlim => ch
stat = fun(obj%unlim)

if(stat/=1) then
 print*,101
else
 print*,'PASS1'
endif

if(ch(1,2,3,1)=='name') then
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
  fun=1
end select  
end function
end

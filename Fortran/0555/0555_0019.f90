program main

interface
function stat(unlim)
class(*) :: unlim(:,:)
integer :: stat
end function
end interface

type tt
 character(len=:),pointer :: ch(:,:)
end type

type(tt)::obj
allocate(character(len=5)::obj%ch(4,6))

if(stat(obj%ch)/=1) then
 print*,101
else
 print*,'PASS1'
endif
end

function stat(unlim)
interface
function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:)
end function
end interface
class(*) :: unlim(:,:)
integer :: stat
stat = 0

stat = fun(unlim)

select type(unlim)
type is(character(*))
if(unlim(4,3)=='name') then
 print*,'PASS2'
else
 print*,'102'
endif
end select
end function

function fun(dmy)
 integer :: fun
 class(*):: dmy(:,:)
 if(sizeof(dmy) /= 5*24) print*,'201'

 fun=0
 
select type(dmy)
 type is(integer)
  print*,'202'
 type is(character(*))
  dmy='null'
  dmy(4,3)='name'
  fun=1
end select  
end function

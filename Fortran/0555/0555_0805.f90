module mod1
type ty
integer :: ii
end type
type,extends(ty) :: tty
integer :: jj
end type
class(*),allocatable :: calc
class(*),allocatable :: calc_1(:)
class(*),allocatable :: calc_2(:,:)
class(*),allocatable :: calc_3(:,:,:)
contains
function fun(d1,d2,d3,d4)
class(*) ::d1
class(*) :: d2(:)
class(*) :: d3(:,:)
class(*) :: d4(:,:,:)
if(sizeof(d1) .NE. 4) print*,"Faill"
if(sizeof(d2(2)) .NE. 4) print*,"Faill1"
if(sizeof(d3(2,3)) .NE. 4) print*,"Faill2"
if(sizeof(d4(5,5,5)) .NE. 8) print*,"Faill3"
select type(d1)
type is(integer)
d1 = 5
select type(d2)
type is(ty)
d2(1)%ii = 4
end select
select type(d3)
type is(real)
d3(2,2) = 6.0
select type(d4)
type is(tty)
d4(2,3,4)%jj=7
end select
end select
end select
 
select type(d1)
type is(integer)
if(d1 .NE. 5) then
print*,"Err 1"
else
print*,"Pass 1"
endif
select type(d2)
type is(ty)
if(d2(1)%ii .NE. 4) then
print*,"Err 2"
else
print*,"Pass 2"
endif
if(d1 .NE. 5) then
print*,"Err 11"
else
print*,"Pass 11"
endif
end select
select type(d3)
type is(real)
if(d3(2,2) .NE. 6) then
print*,"Err 3"
else
print*,"Pass 3"
endif
select type(d4)
type is(tty)
if(d4(2,3,4)%jj .NE. 7) then
print*,"Err 4"
else
print*,"Pass 4"
endif
end select
end select
end select
 
fun=5
end function
end
 
use mod1
allocate(integer:: calc)
allocate(ty:: calc_1(5))
allocate(real:: calc_2(5,10))
allocate(tty:: calc_3(5,5,5))
if(fun(calc,calc_1,calc_2,calc_3)==5) print*,'PASS'
end


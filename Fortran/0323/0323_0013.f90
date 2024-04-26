call init_mod01()
call test01()
call init_com02()
print *,'snfmm516 pass'
end

 module mod01
common /com/ m
   integer,pointer :: m
 end module 

subroutine init_mod01()
use mod01
allocate(m)
m=10
end

subroutine test01()
use mod01
implicit none
integer :: k(m)
if (size(k).ne.10) print *,'err'
end

subroutine init_com02()
common /com/ m
integer,pointer :: m
allocate(m)
m=10
end

subroutine test02()
common /com02/ m
integer,pointer :: m
integer :: k(m)
if (1.eq.2) then
if (size(k).ne.10) print *,'err'
end if
end

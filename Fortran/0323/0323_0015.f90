call init_mod01()
call test01()
call init_com02()
call test02()
print *,'snfmm518 pass'
end

 module mod01
   integer,pointer :: m(:)
 end module 

subroutine init_mod01()
use mod01
allocate(m(1))
m=10
end

subroutine test01()
use mod01
implicit none
integer :: k(m(1))
if (size(k).ne.10) print *,'err'
end

subroutine init_com02()
common /com/ m
integer,pointer :: m(:)
allocate(m(1))
m=10
end

subroutine test02()
common /com/ m
integer,pointer :: m(:)
integer :: k(m(1))
end

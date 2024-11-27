module mod
type str1
  integer,allocatable :: from(:)
end type
type str2
  integer,allocatable :: to(:)
end type
type(str1) :: s1(10)
type(str2) :: s2(10)
end module

use mod
allocate(s1(5)%from(10))

s1(5)%from = 10

call move_alloc(s1(5)%from,s2(10)%to)

if (.not. allocated(s2(10)%to)) then
   print *,'error'
else 
   if(any(s2(10)%to/=10))write(6,*) "NG"
endif
print *,'pass'
end

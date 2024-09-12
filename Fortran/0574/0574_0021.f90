module m
implicit none
interface gen
module procedure gen1
module procedure gen2
end interface
contains
integer function gen1(s1,n)
  integer, pointer::s1
  integer, target :: n
  s1=>n
  gen1=s1
end function
integer function gen2(s2,m)
  integer, allocatable::s2
  integer::m
  allocate(s2)
  s2=m
  gen2=s2
end function
end module

use m
implicit none
integer,allocatable::arr
integer,pointer::ptr
if(gen(ptr,10) /= 10) print *,101
if(gen(arr,20) /=20) print *,102
print *,"pass"
end

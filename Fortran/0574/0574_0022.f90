module m
implicit none
interface test
     module procedure test1
     module procedure test2
end interface
contains
integer function test1(a,b)
  integer,allocatable ::a
  integer,optional :: b
  a=100
  test1=a
end function 

integer function test2(x,y)
  integer,pointer ::x
  integer,optional ::y
  test2=x
end function

end module

use m
implicit none
integer,pointer :: ptr
integer,allocatable ::alloc
integer,target :: b =1000
allocate(alloc)
ptr=>b
if(test(ptr) /= 1000) print *,101
if(test(alloc) /=100) print *,102
print *,"Pass"
end

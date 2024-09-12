module m
 type :: t
  integer :: i
 contains
  procedure, pass(y) :: foo
 end type t

contains
 integer function foo(y,x,a,b,c,d)
  type(t),optional :: x
  class(t) :: y
  integer,optional :: a,b,c,d
  print*, "Pass argument value :", y%i 
  y%i=100
  if(present(x)) print *, 'foo 1 -> ', x%i
  if(present(a)) print *, 'foo 2 -> ', a
  if(present(b)) print *, 'foo 3 -> ', b
  if(present(c)) print *, 'foo 4 -> ', c
  if(present(d)) print *, 'foo 5 -> ', d
  foo = y%i 
 end function foo

end module m

use m
type(t) :: t1, t2
t1%i = 40 
t2%i = 50
if (100 .NE. t1%foo())              print *, "Err -1"
if (100 .NE. t1%foo(t2,1))          print *, "Err -2"
if (100 .NE. t1%foo(t2,1,2))        print *, "Err -3"
if (100 .NE. t1%foo(t2,1,2,3))      print *, "Err -4"
if (100 .NE. t1%foo(t2,1,2,3,4))    print *, "Err -5"

if (100 .NE. t2%foo(t1))            print *, "Err -6"
if (100 .NE. t2%foo(t1,5))          print *, "Err -7"
if (100 .NE. t2%foo(t1,5,6))        print *, "Err -8"
if (100 .NE. t2%foo(t1,5,6,7))      print *, "Err -9"
if (100 .NE. t2%foo(t1,5,6,7,8))    print *, "Err -10"
print*, "Pass"
end


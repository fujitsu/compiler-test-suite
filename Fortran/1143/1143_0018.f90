module m1
implicit none
 private 
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
  interface gen
    procedure foo1,foo2
  end interface
interface
subroutine foo1(a)
real::a
end subroutine
subroutine foo2(n)
integer::n
end subroutine
end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
call foo1(1.)
call foo2(2 )
call gen (1.)
call gen (2 )
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg031n : pass'
end
subroutine foo1(a)
real::a
if (a/=1.) print *,901
end subroutine
subroutine foo2(n)
integer::n
if (n/=2) print *,902
end subroutine

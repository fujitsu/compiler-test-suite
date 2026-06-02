module n
  interface gen
    procedure h   
  end interface
contains
character function  foo1(a)
real::a
character h
entry h(a)
if (a/=1.) print *,901
foo1='1'
end 
end
module m1
use n,f=>foo1,hh=>h
implicit none
 private 
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
if (f(1.0)/='1')print *,101
if (gen(1.0)/='1')print *,101
if (hh (1.0)/='1')print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg421n : pass'
end

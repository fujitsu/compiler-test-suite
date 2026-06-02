module n
  interface operator (.x.)
    procedure f
  end interface
contains
function    f(a,b) result(r)
logical     ::r
character(*),intent(in)::a
real,intent(in)::b
if (a/='1') print *,900
if (b/=1.) print *,901
r=.false.
end 
end
module m1
use n
implicit none
 private::f,operator (.x.)
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
real::d=1.
if ('1' .x. d ) print *,100
if ('1' .x. 1.) print *,101
if (f('1' ,   1.)) print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg483n : pass'
end

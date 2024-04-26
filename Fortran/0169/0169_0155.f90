module m
  interface
     module subroutine sub(a)
       common/com/n1,n2
       integer :: a(n1,n2,n1)
     end subroutine
  end interface
contains
  module procedure sub
    n1=10
    n2=20
  end procedure
end module m

use m
common/com/n1,n2
integer::a(5,6,5)
n1=5
n2=6
call sub(a)
if (n1/=10) print *,101
if (n2/=20) print *,102
print *,'pass'
end

module const
  integer :: n
end module const
module m
  interface
     module subroutine sub(a)
       use const
       integer::a(n)
     end subroutine
  end interface
contains
  module procedure sub 
  end procedure
end module m

use m
print *,'pass'
end

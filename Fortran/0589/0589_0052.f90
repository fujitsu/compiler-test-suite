module m
integer, target:: trg=10

type t1
contains
 procedure,nopass :: fun
end type t1

contains
       function fun()
       integer, pointer :: fun
       fun=>trg
       end function
end module

use m
type(t1)::ty(1,2)
if(trg /=10) print*,101
ty(1,2)%fun()=100
if(trg /=100) print*,102
print *,"Pass"
end

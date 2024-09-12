module m1
implicit none
 procedure(),pointer::p
 protected::p
contains
 subroutine s(pp)
 procedure(),pointer,optional::pp
external sub
p=> sub
call p
if (present(pp)) then
pp=> sub
endif
 end subroutine
end

use m1
 procedure(),pointer::pp
call s(pp)
call s
rewind 1
read(1,*) k
if (k/=100) print *,10001
read(1,*) k
if (k/=100) print *,10002
print *,'pass'
end
 subroutine sub
write(1,*) 100
 end subroutine

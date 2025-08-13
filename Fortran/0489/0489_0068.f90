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
rewind 21
read(21,*) k
if (k/=100) print *,10001
read(21,*) k
if (k/=100) print *,10002
print *,'pass'
end
 subroutine sub
write(21,*) 100
 end subroutine

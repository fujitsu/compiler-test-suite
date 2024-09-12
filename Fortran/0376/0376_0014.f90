module m1
contains
subroutine s
procedure(sin),pointer :: pp
call t1(pp)
end subroutine
subroutine t1(p)
procedure(sin),pointer :: p
p=>sin
if (.not.associated(p,sin)) print *,'error-2'
if (abs(p(.1)-sin(.1))>0.001)print *,'error-3'
end subroutine
end
use m1
call s
print *,"pass"
end

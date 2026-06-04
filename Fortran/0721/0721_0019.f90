module mod1
interface
  subroutine sub(ii)
   integer ::ii
  end subroutine
end interface
type aa
 procedure(sub),nopass,pointer :: p1
end type
type bb
 procedure(sub),nopass,pointer :: p1
end type
end module
use mod1
type (aa)::aa1
type (bb)::bb1
aa1%p1=>sub
call sub(i1)
call aa1%p1(i2)
bb1%p1=>sub
call sub(i3)
call bb1%p1(i4)
if (i3.ne.i4) print *,'fail'
 print *,"pass"
end
subroutine sub(ii)
 ii=2
end

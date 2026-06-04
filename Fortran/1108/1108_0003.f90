module mod1
type::tt
end type
character(*)::zzz*2
interface
   subroutine sub()  bind(C, name="zzz")
   end subroutine sub
end interface
end module mod1
use mod1,only:tt,zzz
use mod1,only:
interface
   subroutine sub()  bind(C, name="zzz")
   end subroutine sub
end interface
if(len(zzz)/=2) print *,'err'
print *,'sngtpri_03:pass'
end

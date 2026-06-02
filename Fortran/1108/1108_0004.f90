module mod1
private
type::tt
end type
character(*)::zzz*2
interface
   subroutine sub()  bind(C, name="zzz")
   end subroutine sub
end interface
end module mod1
use mod1,only:
interface
   subroutine sub()  bind(C, name="zzz")
   end subroutine sub
end interface
print *,'sngtpri_04:pass'
end


module mod1
type::tt
end type
character(*)::zzz*2
interface
   function sub()  bind(C, name="zzz")
   end function sub
end interface
end module mod1
use mod1,only:tt,zzz
use mod1,only:
interface
   function sub()  bind(C, name="zzz")
   end function sub
end interface
print *,'sngtpri_06:pass'
end


module mod1
integer::iii
  interface
     subroutine sub()  bind(C, name="proc")
     end subroutine sub
  end interface
end module mod1
use mod1,only:iii
interface
   subroutine sub()  bind(C, name="proc")
   end subroutine sub
end interface
call sub
if(iii/=-1) print *,'err'
print *,'sngtpri_09:pass'
end
subroutine sub() bind(C, name="proc")
use mod1
iii=-1
end subroutine sub

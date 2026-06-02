module mod1
  private
  interface
     subroutine sub()  bind(C, name="proc")
     end subroutine sub
  end interface
end module mod1
use mod1
interface
   subroutine sub()  bind(C, name="proc")
   end subroutine sub
end interface
print *,'sngtpri_01:pass'
end

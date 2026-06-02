module mod1
  private
  interface
     subroutine sub()  bind(C)
     end subroutine sub
  end interface
end module mod1
use mod1
interface
   subroutine sub()  bind(C)
   end subroutine sub
end interface
print *,'sngtpri_18:pass'
end

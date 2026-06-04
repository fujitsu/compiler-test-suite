module mod1
  interface
     subroutine sub()  bind(C)
     end subroutine sub
  end interface
end module mod1
use mod1,sub2=>sub
interface
   subroutine sub()  bind(C)
   end subroutine sub
end interface
print *,'sngtpri_20:pass'
end

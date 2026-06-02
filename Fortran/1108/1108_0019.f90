module mod1
  integer::ii
  interface
     subroutine sub()  bind(C)
     end subroutine sub
  end interface
end module mod1
use mod1,only:ii
interface
   subroutine sub()  bind(C)
   end subroutine sub
end interface
call sub
if(ii/=-1) print *,'err'
print *,'sngtpri_19:pass'
end
subroutine sub()  bind(C)
use mod1
ii=-1
end subroutine sub

module mod1
  private
  interface
     function sub()  bind(C, name="proc")
     end function sub
  end interface
end module mod1
use mod1
interface
   function sub()  bind(C, name="proc")
   end function sub
end interface
print *,'sngtpri_02:pass'
end

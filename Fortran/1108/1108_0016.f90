module m1
private
  interface
     subroutine sub1()  bind(c, name="zzz")
     end subroutine sub1
  end interface
end module m1
module m2
  use m1
end module m2
use m2
interface
   subroutine sub1()  bind(c, name="zzz")
   end subroutine sub1
end interface
print *,'sngtpri_16:pass'
end

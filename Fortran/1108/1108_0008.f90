module m1
  interface
     subroutine sub1()  bind(c, name="zzz")
     end subroutine sub1
  end interface
end module m1
module m2
  use m1,only:sub2=>sub1
end module m2
use m2,only:sub3=>sub2
interface
   subroutine sub1()  bind(c, name="zzz")
   end subroutine sub1
end interface
print *,'sngtpri_08:pass'
end

module m1
integer::i
  interface
     subroutine sub1()  bind(c, name="zzz")
     end subroutine sub1
  end interface
end module m1
use m1,sub2=>sub1
use m1,sub3=>sub1
interface
   subroutine sub1()  bind(c, name="zzz")
   end subroutine sub1
end interface
call sub1
if(i/=-11) print *,'err'
print *,'sngtpri_10:pass'
end
subroutine sub1()  bind(c, name="zzz")
use m1
i=-11
end subroutine sub1

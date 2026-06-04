module m1
integer::ii(2)
  interface
     subroutine sub1()  bind(c, name="zzz")
     end subroutine sub1
  end interface
end module m1
use m1,only:ii
interface
   subroutine sub1()  bind(c, name="zzz") 
   end subroutine sub1
end interface
call sub1()
if(any(ii/=[1,1])) print *,'err'
print *,'sngtpri_11:pass'
end
subroutine sub1()  bind(c, name="zzz") 
use m1
ii=1
end subroutine  sub1

module m1
  interface
     subroutine sub1() 
     end subroutine sub1
  end interface
end module m1
use m1,sub2=>sub1
use m1,sub3=>sub1
interface
   subroutine sub1()
   end subroutine sub1
end interface
print *,'sngtpri_12:pass'
end

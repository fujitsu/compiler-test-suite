module m1
contains
subroutine s(s1)
 interface
   subroutine s1() bind(c)
   end subroutine 
 end interface
 call s1
end subroutine 
subroutine ss(s1)
 interface
   subroutine s1()  bind(c)
   end subroutine 
 end interface
 call s1
end subroutine 
end
use m1
interface
   subroutine t1() bind(c,name='aBc')
   end subroutine 
   subroutine t2() bind(c,name='aBC')
   end subroutine 
end interface
call s(t1)
call ss(t2)
print *,'pass'
end
   subroutine t1() bind(c,name='aBc')
   end subroutine 
   subroutine t2() bind(c,name='aBC')
   end subroutine 

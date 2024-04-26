module m1
interface 
   function f(a)
     integer:: f, a
   end function
end interface
procedure(f),pointer::p
contains
subroutine ss(pp)
procedure(f),pointer,intent(in)::pp
 if (pp(1)/=1) print *,202,pp(1)
end subroutine
subroutine tt(pp)
procedure(f),pointer::pp
 if (pp(1)/=1) print *,203,pp(1)
end subroutine
subroutine ww(pp)
procedure(f)::pp
 if (pp(1)/=1) print *,204,pp(1)
end subroutine
end
 subroutine s1
 use m1
 p=> f 
 if (p(1)/=1) print *,205,p(1)
call ss(p)
call s2(f)
call s3(p)
contains
subroutine s3(pp)
procedure(f),pointer::pp
 if (pp(1)/=1) print *,206,pp(1)
call s2(pp)
end subroutine
 end
subroutine s2(ff)
use m1
procedure(f)::ff
procedure(f),pointer::pp
pp=>ff
call ss(pp)
end
 call s1
 print *,'pass'
 end

   function f(a)
     integer:: f, a
     f=a
   end function

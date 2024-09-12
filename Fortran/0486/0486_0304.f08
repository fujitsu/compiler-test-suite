module m1
interface 
   function f(a)
     integer:: f, a
   end function
end interface
contains
subroutine ss(pp)
procedure(f),pointer,intent(in)::pp
 if (pp(1)/=1) print *,202,pp(1)
end subroutine
end
 subroutine s1
 use m1
procedure(f),pointer::pp1,pp2
pp1=>f
pp2=>f
call s2(pp1,pp2,f,f)
contains
subroutine s2(p1,p2,p3,ff)
procedure(f),pointer::p1,p4
procedure(f),pointer,intent(in)::p2,p3
procedure(f)::ff
p4=>ff
call ss(f )
call ss(ff)
call ss(p1)
call ss(p2)
call ss(p3)
call ss(p4)
end subroutine
end
 call s1
 print *,'pass'
 end

   function f(a)
     integer:: f, a,ffx
   entry ffx(a)
     f=a
   end function

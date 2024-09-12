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
call s2(f)
contains
subroutine s2(ff)
procedure(f)::ff
procedure(f)::ffx
call ss(f)
call ss(ffx)
call ss(ff)
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

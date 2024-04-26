module m1
 type t1
   integer:: x11
   contains
   procedure:: t_prc=>prc
   generic:: assignment(=) => t_prc
 end type
 contains
 subroutine   prc(x,y)
   class(t1),intent(out)::x
   integer,intent(in)::y
   x%x11 = y
 end subroutine
end
module m2
use m1
 type t2
   integer:: x21
   type(t1):: x22
 end type
end

subroutine s1
use m2
type(t1):: v1
type(t2):: v2
v1=101
if (v1%x11/=101)print *,101
v2%x22=102
if (v2%x22%x11/=102)print *,102
end
call s1
print *,'pass'
end

 


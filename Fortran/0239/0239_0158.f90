module m1
 type x
    integer::x1=1
 end type
end
subroutine s
use m1
call s1
call s2
contains
 subroutine s1
   use m1
   type(x)::v1
   if (v1%x1/=1) print *,101
 end  subroutine
 subroutine s2
   use m1
   type(x)::v1
   if (v1%x1/=1) print *,102
 end  subroutine
end
subroutine t
   use m1,z=>x
 type x
    integer::x1=2
 end type
call t1
call t2
call t3
contains
 subroutine t1
   use m1
   type(x)::v1
   if (v1%x1/=1) print *,103
 end  subroutine
 subroutine t2
   use m1
   type(x)::v1
   if (v1%x1/=1) print *,104
 end  subroutine
 subroutine t3
   type(x)::v1
   if (v1%x1/=2) print *,105
 end  subroutine
end
call s
call t
print *,'pass'
end


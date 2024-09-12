module m1
  integer,private::x1=1
  integer,private::x2(100000)
  integer,public ::x3=2
  integer,public ::x4(100000)
contains
  subroutine ms
   if (x1/=1) print *,101
   x2(1)=10
   if (x2(1)/=10) print *,102
   if (x3/=2) print *,103
   x4(1)=12
   if (x4(1)/=12) print *,104
  end subroutine
end
use m1
call ms
   if (x3/=2) print *,201
   if (x4(1)/=12) print *,122
print *,'pass'
end

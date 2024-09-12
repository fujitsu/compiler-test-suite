module m1
  type x2
    integer::y1=1
    integer,pointer::y2=>null()
   end type
   type (x2),pointer:: v2
   data v2/null()/
end
subroutine s1
use m1
  type x1
    integer::y1=1
    integer,pointer::y2=>null()
   end type
   type (x1),pointer:: v1
   data v1/null()/
   if (associated(v1)) print *,101
   if (associated(v2)) print *,102
end
  type x1
    integer::y1=1
    integer,pointer::y2=>null()
   end type
   type (x1),pointer:: v1
   data v1/null()/
   if (associated(v1)) print *,201
call s1
print *,'pass'
end

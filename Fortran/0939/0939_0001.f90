module m1
  contains
  subroutine s( x )
   integer,asynchronous,value::x(:)
   if (any(x/=[13,11,12])) print *,102
   x=1
   if (any(x/=1)) print *,103
  end subroutine

end module

use m1
type ty
 integer:: a(3)=[11,12,13]
end type
integer::v(3)=[3,1,2]
type(ty)::obj
call s( obj%a(v) )
if (any(obj%a/=[11,12,13])) print *,101
print *,'PASS'
end


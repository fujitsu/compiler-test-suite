module m1
 contains
 integer function func( x )
 integer,value,asynchronous::x(2,3)
 if (any(x/=50)) print *,102,x
 func= x(1,1)+x(2,3)
 x=100
 end function
end module

use m1
type ty 
 integer:: a(3,3)
end type
integer::v(2)=[3,2]
type (ty)::obj
 obj%a=50
 if(func( obj%a(v,:) )/= 100)print*,103
 if (any(obj%a/=50)) print *,101
 print *,'PASS'
end



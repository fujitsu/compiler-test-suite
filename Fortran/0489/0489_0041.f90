module m1
  use iso_c_binding
  contains
   subroutine s1(ptr)
     type (c_ptr),intent(in):: ptr
     integer::a( f( c_associated(ptr ) )) 
     if (size(a)/= 2) print *,201
   end subroutine
   pure function f( c) result(r)
     integer::r
     logical,intent(in)::c
     r=1
     if (c) r=2
   end function
end
use m1
     type (c_ptr):: ptr
     integer,target::t=1
  ptr=c_loc( t )
  call s1(ptr)
print *,'pass'
end

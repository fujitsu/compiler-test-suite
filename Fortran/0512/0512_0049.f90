module m
integer,pointer::pointer_array(:)
procedure(if),pointer::p
contains
subroutine s(explicit_shape_array,x)
integer::explicit_shape_array(2),x(:)
write(1,*)explicit_shape_array
write(1,*)x
end subroutine
function if(k) 
  integer,dimension(:):: k
  integer,dimension(size(k)) ::if
  if=k
end function
end
subroutine x
use m
integer::scalar_variable
allocate(pointer_array(2))
pointer_array=1
scalar_variable=2
p=>if
call s(pointer_array,(p((/scalar_variable/))))
end
call x
print *,'pass'
end

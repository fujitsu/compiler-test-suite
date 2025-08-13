module m
integer,pointer::pointer_array(:)
contains
subroutine s(explicit_shape_array,x)
integer::explicit_shape_array(2),x(1)
write(4,*)explicit_shape_array
write(4,*)x
end subroutine
end
subroutine x
use m
integer::scalar_variable
allocate(pointer_array(2))
pointer_array=1
scalar_variable=2
call s(pointer_array,((/scalar_variable/)))
end
call x
print *,'pass'
end

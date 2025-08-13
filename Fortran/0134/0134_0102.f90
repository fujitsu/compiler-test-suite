module m
integer,pointer::pointer_array(:)
contains
subroutine s(explicit_shape_array,assumed_shape_array)
integer::explicit_shape_array(2)
integer::assumed_shape_array(:)
write(60,*)explicit_shape_array
write(60,*)assumed_shape_array
end subroutine
end
subroutine x
use m
allocate(pointer_array(2))
pointer_array=1
call xx(pointer_array)
contains
subroutine xx(assumed_shape)
integer       assumed_shape(:)
integer::scalar_variable
scalar_variable=2
call s(assumed_shape,(/scalar_variable/))
end subroutine
end
call x
print *,'pass'
end

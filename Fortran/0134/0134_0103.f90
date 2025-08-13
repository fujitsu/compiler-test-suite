module m
integer,pointer::pointer_array(:)
contains
subroutine s(explicit_shape_array,assumed_shape_array)
integer::explicit_shape_array(2)
integer::assumed_shape_array(:)
write(61,*)explicit_shape_array
write(61,*)assumed_shape_array
end subroutine
end
subroutine x
use m
allocate(pointer_array(3))
pointer_array=1
call xx(pointer_array)
contains
subroutine xx(as)
integer       as(3)
integer::scalar_variable
scalar_variable=2
call s(as(1:3:2),(/scalar_variable/))
end subroutine
end
call x
print *,'pass'
end

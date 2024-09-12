type x
  integer,allocatable::x1(:)
end type
type y
   type(x),allocatable::y1(:)
end type
type(x)::v(2)
call sub( y( v ) )

print *,'pass'
contains
  subroutine sub(yv)
    type(y)::yv
end
end

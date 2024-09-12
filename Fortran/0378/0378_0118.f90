subroutine s1
type y
  integer::y1
end type
type(y),parameter,dimension(0):: x1= &
  [ y:: ]
call s( [ y::  ] )
call s( x1                    )
contains
subroutine s(x)
type(y),dimension(:)::x
if (size(x)/=0)print *,101,size(x)
end subroutine
end
call s1
print *,'pass'
end

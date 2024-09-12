subroutine s1
integer(1),parameter,dimension(0):: x1= &
  [ integer(1):: ]
call s( [ integer(1)::  ] )
call s( x1                    )
contains
subroutine s(x)
integer(1),dimension(:)::x
if (size(x)/=0)print *,101,size(x)
end subroutine
end
call s1
print *,'pass'
end

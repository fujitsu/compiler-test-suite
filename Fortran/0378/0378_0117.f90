subroutine s1
logical(8),parameter,dimension(0):: x1= &
  [ logical(8):: ]
call s( [ logical(8)::  ] )
call s( x1                    )
contains
subroutine s(x)
logical(8),dimension(:)::x
if (size(x)/=0)print *,101,size(x)
end subroutine
end
call s1
print *,'pass'
end

subroutine s1
complex(16),parameter,dimension(0):: x1= &
  [ complex(16):: ]
call s( [ complex(16)::  ] )
call s( x1                    )
contains
subroutine s(x)
complex(16),dimension(:)::x
if (size(x)/=0)print *,101,size(x)
end subroutine
end
call s1
print *,'pass'
end

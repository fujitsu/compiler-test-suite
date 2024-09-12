subroutine s1
integer(1),parameter,dimension(1):: x1= &
  [ integer(1):: -1 ]
call s( [ integer(1):: -1 ] )
call s( x1                    )
contains
subroutine s(x)
integer(1),dimension(:)::x
if (size(x)/=1)print *,101,size(x)
if (x(1)/=-1)print *,102,x(1)
end subroutine
end
call s1
print *,'pass'
end

subroutine s1
real(16),parameter,dimension(0)::a02=[ real(16) :: ]
real(4),parameter,dimension(0)::a03=[ real(4) :: ]
real(8),parameter,dimension(0)::a04=[ real(8) :: ]
call s02(a02               )
call s02([ a02           ] )
call s02([ real(16) :: ] )
call s03(a03               )
call s03([ a03           ] )
call s03([ real(4) :: ] )
call s04(a04               )
call s04([ a04           ] )
call s04([ real(8) :: ] )
contains
subroutine s02(x)
real(16)::x(:)
if (size(x)/=0) print *,201
end subroutine
subroutine s03(x)
real(4)::x(:)
if (size(x)/=0) print *,301
end subroutine
subroutine s04(x)
real(8)::x(:)
if (size(x)/=0) print *,401
end subroutine
end
call s1
print *,'pass'
end

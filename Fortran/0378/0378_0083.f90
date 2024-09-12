subroutine s1
logical(1),parameter,dimension(0)::a01=[ logical(1) :: ]
logical(2),parameter,dimension(0)::a02=[ logical(2) :: ]
logical(4),parameter,dimension(0)::a03=[ logical(4) :: ]
logical(8),parameter,dimension(0)::a04=[ logical(8) :: ]
call s01(a01               )
call s01([ a01           ] )
call s01([ logical(1) :: ] )
call s02(a02               )
call s02([ a02           ] )
call s02([ logical(2) :: ] )
call s03(a03               )
call s03([ a03           ] )
call s03([ logical(4) :: ] )
call s04(a04               )
call s04([ a04           ] )
call s04([ logical(8) :: ] )
contains
subroutine s01(x)
logical(1)::x(:)
if (size(x)/=0) print *,101
end subroutine
subroutine s02(x)
logical(2)::x(:)
if (size(x)/=0) print *,201
end subroutine
subroutine s03(x)
logical(4)::x(:)
if (size(x)/=0) print *,301
end subroutine
subroutine s04(x)
logical(8)::x(:)
if (size(x)/=0) print *,401
end subroutine
end
call s1
print *,'pass'
end

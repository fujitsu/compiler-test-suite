subroutine s1
integer(1),parameter,dimension(0)::a01=[ integer(1) :: ]
integer(2),parameter,dimension(0)::a02=[ integer(2) :: ]
integer(4),parameter,dimension(0)::a03=[ integer(4) :: ]
integer(8),parameter,dimension(0)::a04=[ integer(8) :: ]
integer(1),parameter,dimension(0)::a11= [ integer(8):: [ integer(1) :: ]]
integer(2),parameter,dimension(0)::a12= [ integer(8):: [ integer(2) :: ]]
integer(4),parameter,dimension(0)::a13= [ integer(8):: [ integer(4) :: ]]
integer(8),parameter,dimension(0)::a14= [ integer(8):: [ integer(8) :: ]]
call s01(a01               )
call s01([ a01           ] )
call s01([ integer(1) :: ] )
call s02(a02               )
call s02([ a02           ] )
call s02([ integer(2) :: ] )
call s03(a03               )
call s03([ a03           ] )
call s03([ integer(4) :: ] )
call s04(a04               )
call s04([ a04           ] )
call s04([ integer(8) :: ] )

call s01(a11               )
call s01([ a11           ] )
call s01([ integer(1) :: [ integer(8) :: ]] )
call s02(a12               )
call s02([ a12           ] )
call s02([ integer(2) :: [ integer(4) :: ]] )
call s03(a13               )
call s03([ a13           ] )
call s03([ integer(4) :: [ integer(2) :: ]] )
call s04(a14               )
call s04([ a14           ] )
call s04([ integer(8) :: [ integer(1) :: ]] )
contains
subroutine s01(x)
integer(1)::x(:)
if (size(x)/=0) print *,101
end subroutine
subroutine s02(x)
integer(2)::x(:)
if (size(x)/=0) print *,201
end subroutine
subroutine s03(x)
integer(4)::x(:)
if (size(x)/=0) print *,301
end subroutine
subroutine s04(x)
integer(8)::x(:)
if (size(x)/=0) print *,401
end subroutine
end
call s1
print *,'pass'
end

subroutine s1
character(*),parameter,dimension(0)::a01=[ character(1) :: ]
character(*),parameter,dimension(0)::a02=[ character(2) :: ]
character(*),parameter,dimension(0)::a03=[ character(4) :: ]
character(*),parameter,dimension(0)::a04=[ character(8) :: ]
character(*),parameter,dimension(0)::a11= [ character(1):: [ character(1) :: ]]
character(*),parameter,dimension(0)::a12= [ character(2):: [ character(2) :: ]]
character(*),parameter,dimension(0)::a13= [ character(4):: [ character(4) :: ]]
character(*),parameter,dimension(0)::a14= [ character(8):: [ character(8) :: ]]
call s01(a01               )
call s01([ a01           ] )
call s01([ character(1) :: ] )
call s02(a02               )
call s02([ a02           ] )
call s02([ character(2) :: ] )
call s03(a03               )
call s03([ a03           ] )
call s03([ character(4) :: ] )
call s04(a04               )
call s04([ a04           ] )
call s04([ character(8) :: ] )

call s01(a11               )
call s01([ a11           ] )
call s01([ character(1) :: [ character(8) :: ]] )
call s02(a12               )
call s02([ a12           ] )
call s02([ character(2) :: [ character(4) :: ]] )
call s03(a13               )
call s03([ a13           ] )
call s03([ character(4) :: [ character(2) :: ]] )
call s04(a14               )
call s04([ a14           ] )
call s04([ character(8) :: [ character(1) :: ]] )
contains
subroutine s01(x)
character(*)::x(:)
if (size(x)/=0) print *,101
if (len(x)/=1)print *,1001,len(x)
end subroutine
subroutine s02(x)
character(*)::x(:)
if (size(x)/=0) print *,201
if (len(x)/=2)print *,2001,len(x)
end subroutine
subroutine s03(x)
character(*)::x(:)
if (size(x)/=0) print *,301
if (len(x)/=4)print *,3001,len(x)
end subroutine
subroutine s04(x)
character(*)::x(:)
if (size(x)/=0) print *,401
if (len(x)/=8)print *,4001,len(x)
end subroutine
end
call s1
print *,'pass'
end

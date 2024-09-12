subroutine s1
complex(16),parameter,dimension(0)::a02=[ complex(16) :: ]
complex(4),parameter,dimension(0)::a03=[ complex(4) :: ]
complex(8),parameter,dimension(0)::a04=[ complex(8) :: ]
complex(16),parameter,dimension(0)::a12= [ complex(8):: [ complex(16) :: ]]
complex(4),parameter,dimension(0)::a13= [ complex(8):: [ complex(4) :: ]]
complex(8),parameter,dimension(0)::a14= [ complex(8):: [ complex(8) :: ]]
call s02(a02               )
call s02([ a02           ] )
call s02([ complex(16) :: ] )
call s03(a03               )
call s03([ a03           ] )
call s03([ complex(4) :: ] )
call s04(a04               )
call s04([ a04           ] )
call s04([ complex(8) :: ] )

call s02(a12               )
call s02([ a12           ] )
call s02([ complex(16) :: [ complex(4) :: ]] )
call s03(a13               )
call s03([ a13           ] )
call s03([ complex(4) :: [ complex(16) :: ]] )
call s04(a14               )
call s04([ a14           ] )
call s04([ complex(8) :: [ complex(8) :: ]] )
contains
subroutine s02(x)
complex(16)::x(:)
if (size(x)/=0) print *,201
end subroutine
subroutine s03(x)
complex(4)::x(:)
if (size(x)/=0) print *,301
end subroutine
subroutine s04(x)
complex(8)::x(:)
if (size(x)/=0) print *,401
end subroutine
end
call s1
print *,'pass'
end

subroutine s1
integer,parameter,dimension(4)::a1=[integer:: 1_1,2_2,3_4,4_8]
call ss( a1 )
call ss( [integer:: 1_1,2_2,3_4,4_8] )
call st( a1 )
call st( [integer:: 1_1,2_2,3_4,4_8] )
contains
subroutine st(a1)
integer a1(:)
if (a1(1)/=1)print *,1,a1(1)
if (a1(2)/=2)print *,2,a1(2)
if (a1(3)/=3)print *,3,a1(3)
if (a1(4)/=4)print *,4,a1(4)
end subroutine
end
subroutine ss(a1)
integer a1(*)
if (a1(1)/=1)print *,1,a1(1)
if (a1(2)/=2)print *,2,a1(2)
if (a1(3)/=3)print *,3,a1(3)
if (a1(4)/=4)print *,4,a1(4)
end
call s1
print *,'pass'
end

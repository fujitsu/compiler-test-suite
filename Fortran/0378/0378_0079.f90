subroutine s1
integer,parameter,dimension(8)::a1=[integer:: (1_1,2_2,3_4,4_8,i=1,2)]
call ss( a1 )
call ss( [integer:: (1_1,2_2,3_4,4_8,i=1,2)] )
call st( a1 )
call st( [integer:: (1_1,2_2,3_4,4_8,i=1,2)] )
contains
subroutine st(a1)
integer a1(:)
if (a1(1)/=1)print *,1,a1(1)
if (a1(2)/=2)print *,2,a1(2)
if (a1(3)/=3)print *,3,a1(3)
if (a1(4)/=4)print *,4,a1(4)
if (a1(5)/=1)print *,5,a1(5)
if (a1(6)/=2)print *,6,a1(6)
if (a1(7)/=3)print *,7,a1(7)
if (a1(8)/=4)print *,8,a1(8)
if (size(a1)/=8)print *,0,size(a1)
end subroutine
end
subroutine ss(a1)
integer a1(*)
if (a1(1)/=1)print *,1,a1(1)
if (a1(2)/=2)print *,2,a1(2)
if (a1(3)/=3)print *,3,a1(3)
if (a1(4)/=4)print *,4,a1(4)
if (a1(5)/=1)print *,5,a1(5)
if (a1(6)/=2)print *,6,a1(6)
if (a1(7)/=3)print *,7,a1(7)
if (a1(8)/=4)print *,8,a1(8)
end
call s1
print *,'pass'
end

integer::a(2,3)/1,2,2,3,3,4/
integer::b(3,2)/1,2,3,2,3,4/
integer::x(2)/1,2/
integer::y(3)/1,2,3/
call chk1(matmul(a,b))
call chk2(matmul(x,a))
call chk3(matmul(a,y))
print *,'pass'
contains
 subroutine chk1(b)
 integer(4),dimension(:,:)::b
 if (any(shape(b)/=(/2,2/)))write(6,*) "NG"
 if (any((/b/)/=(/14,20,20,29/)))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 integer(4),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any((/b/)/=(/5,8,11/)))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 integer(4),dimension(:)::b
 if (any(shape(b)/=(/2/)))write(6,*) "NG"
 if (any((/b/)/=(/14,20/)))write(6,*) "NG"
 end subroutine
end

call ss1(-3)
print *,'pass'
end
subroutine ss1(i)
real(4)::b(i,i),c(i,i),a(i,i),aa(i),d(i),f(i,i,i)
n=30
b=1
c=1
d=1
a=matmul(b,c)
call chk1(a)
call chk1(b)
call chk1(c)
call chk1(matmul(b,c))
call chk2(3,a)
call chk2(3,matmul(b,c))
call chk3(f)
call chk4(3,f)
call chk5(d)
contains
 subroutine chk1(b)
 real(4),dimension(i,i)::b
 if (any(shape(b)/=(/0,0/)))write(6,*) "NG"
 end subroutine
 subroutine chk2(k,b)
 real(4),dimension(k:i,k:i)::b
 if (any(shape(b)/=(/0,0/)))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 real(4),dimension(i,i,i)::b
 if (any(shape(b)/=(/0,0,0/)))write(6,*) "NG"
 end subroutine
 subroutine chk4(k,b)
 real(4),dimension(k:i,k:i,k:i)::b
 if (any(shape(b)/=(/0,0,0/)))write(6,*) "NG"
 end subroutine
 subroutine chk5(b)
 real(4),dimension(i)::b
 if (any(shape(b)/=(/0/)))write(6,*) "NG"
 end subroutine
end

parameter (n=500)
real(8),dimension(n,n)::a,b,c
a=3.
b=2.
c=1.
call sub1(a,b,c)
if (any(abs(c-3000.)>0.001))print *,'error'
print *,'pass'
contains
subroutine sub1(x,y,z)
real(8) t11, t12,t13
real(8),dimension(:,:)::x,y,z
call cpu_time(t11)
z=matmul(x,y)
call cpu_time(t12)
t13=t12-t11
write(1, *)'  assumed shape:',t13
end subroutine sub1
end

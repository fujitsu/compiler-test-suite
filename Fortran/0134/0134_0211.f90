parameter (n=500)
real(8),dimension(n,n)::a,b,c,d
real(8) t11, t12,t13
real(8) t21, t22,t23
real(8) t31, t32,t33
a=1.
b=1.
c=1.
d=1.
call sub1(a,b,c)
call sub2(a,b,c,n)
call sub3(a,b,c,n)
call sub4(a,b,c,d)
write(1,*)'1:',t13/t23
write(1,*)'1:',t33/t23
print *,'pass'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::x,y,z
call cpu_time(t11)
z=matmul(x,y)
call cpu_time(t12)
t13=t12-t11
write(1,*)'  assumed shape:',t13
end subroutine sub1
subroutine sub2(x,y,z,n)
real(8),dimension(n,n)::x,y,z
call cpu_time(t21)
z=matmul(x,y)
call cpu_time(t22)
t23=t22-t21
write(1,*)'expilicit shape:',t23
end subroutine sub2
subroutine sub3(x,y,z,n)
real(8),allocatable,dimension(:,:)::xx,yy,zz
real(8),dimension(:,:)::x,y,z
call cpu_time(t31)
allocate(xx(n,n),yy(n,n),zz(n,n))
xx=x
yy=y
zz=matmul(xx,yy)
z=zz
deallocate(xx,yy,zz)
call cpu_time(t32)
t33=t32-t31
write(1,*)'assumed shape cp',t33
end subroutine sub3
subroutine sub4(x,y,z,w)
real(8),dimension(:,:)::x,y,z,w
call cpu_time(t11)
z=matmul(x,y)+w
call cpu_time(t12)
t13=t12-t11
write(1,*)'  assumed shape:',t13
end subroutine sub4
end

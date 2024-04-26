subroutine s1(n,x,y,m)
integer::x(n,n),y(n,n)
forall (k=1:n) 
x(k,:m)= x(:m,k)
y(:m,k)= y(k,:m)
end forall
end
subroutine s2(n,x,y,m)
integer::x(n,n),y(n,n),t(n,n)
do k=1,n
t(:m,k)= x(:m,k)
end do
do k=1,n
x(k,:m)= t(:m,k)
end do
do k=1,n
t(:m,k)= y(k,:m)
end do
do k=1,n
y(:m,k)= t(:m,k)
end do
end
parameter(n=10)
integer::x(n,n),y(n,n)
integer::xx(n,n),yy(n,n)
x=reshape([(nn,nn=1,n*n)],[n,n])
y=reshape([(nn,nn=1,n*n)],[n,n])+10
xx=x
yy=y
call s1(n,x,y,n)
call s2(n,xx,yy,n)
if (any(x/=xx)) print *,101
if (any(y/=yy)) print *,102
print *,'pass'
end



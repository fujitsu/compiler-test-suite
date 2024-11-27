integer ::y(100,100),yy(:,:)
allocatable yy
integer,allocatable::xx(:,:),zz(:,:),ww(:,:),qq(:,:)
integer,allocatable,dimension(:,:)::rr(:,:),ss(:,:),tt(:,:)
y=reshape((/(j,j=1,100*100)/),(/100,100/))
allocate(yy(50,50))
yy=y(1:100:2,1:100:2)
call sub1(y(1:100:2,1:100:2),0)
print *,'pass'
contains
subroutine sub1(x,k)
integer x(k:,k:)
if (size(x)/=50*50)write(6,*) "NG"
do i2=k,50-1
do i1=k,50-1
if (x(i1,i2)/=yy(i1+1,i2+1))write(6,*) "NG"
end do
end do
allocate(xx(k:24,k:24))
xx=x(0:49:2,0:49:2)
call sub2(x(0:49:2,0:49:2),0)
end subroutine
subroutine sub2(z,k)
integer z(k:,k:)
if (size(z)/=25*25)write(6,*) "NG"
do i2=k,25-1
do i1=k,25-1
if (z(i1,i2)/=xx(i1,i2))write(6,*) "NG"
end do
end do
allocate(zz(k:12,k:12))
zz=z(0:24:2,0:24:2)
call sub3(z(0:24:2,0:24:2),k)
end subroutine
subroutine sub3(w,k)
integer w(k:,k:)
if (size(w)/=13*13)write(6,*) "NG"
do i2=k,13-1
do i1=k,13-1
if (w(i1,i2)/=zz(i1,i2))write(6,*) "NG"
end do
end do
allocate(ww(k:6,k:6))
ww=w(0:12:2,0:12:2)
call sub4(w(0:12:2,0:12:2),k)
end subroutine
subroutine sub4(q,k)
integer q(k:,k:)
if (size(q)/=7*7)write(6,*) "NG"
do i2=k,7-1
do i1=k,7-1
if (q(i1,i2)/=ww(i1,i2))write(6,*) "NG"
end do
end do
allocate(qq(k:3,k:3))
qq=q(0:6:2,0:6:2)
call sub5(q(0:6:2,0:6:2),k)
end subroutine
subroutine sub5(r,k)
integer r(k:,k:)
if (size(r)/=4*4)write(6,*) "NG"
do i2=k,4-1
do i1=k,4-1
if (r(i1,i2)/=qq(i1,i2))write(6,*) "NG"
end do
end do
allocate(rr(k:1,k:1))
rr=r(0:3:2,0:3:2)
call sub6(r(0:3:2,0:3:2),k)
end subroutine
subroutine sub6(s,k)
integer s(k:,k:)
if (size(s)/=2*2)write(6,*) "NG"
do i2=k,2-1
do i1=k,2-1
if (s(i1,i2)/=rr(i1,i2))write(6,*) "NG"
end do
end do
allocate(ss(k:0,k:0))
ss=s(0:1:2,0:1:2)
call sub7(s(0:1:2,0:1:2),k)
end subroutine
subroutine sub7(t,k)
integer t(k:,k:)
if (size(t)/=1*1)write(6,*) "NG"
do i2=k,1-1
do i1=k,1-1
if (t(i1,i2)/=ss(i1,i2))write(6,*) "NG"
end do
end do
allocate(tt(k:-1,k:-1))
tt=t(0:-1:2,0:-1:2)
call sub8(t(0:-1:2,0:-1:2),k)
end subroutine
subroutine sub8(u,k)
integer u(k:,k:)
if (size(u)/=0)write(6,*) "NG"
end subroutine
end

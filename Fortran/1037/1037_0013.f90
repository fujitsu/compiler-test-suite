module m1
parameter (k=8,kk=4)
integer ::m
contains
subroutine b124(a,b,c)
real(kk),dimension(:,:)::a,b,c
call sub1(a(::m,3),b(::m,::m),c(::m,3))
if (any(abs((/c(::4,3)/)-(/467,4643,8819/))>0.001))print *,'error-124'
contains
subroutine sub1(x,y,z)
real(kk),dimension(:,:)::y
real(kk),dimension(:)::x,z
z(::m)=matmul(x(::m),y(::m,::m))
end subroutine sub1
end subroutine 
subroutine b214(a,b,c)
real(kk),dimension(:,:)::a,b,c
call sub1(a(::m,::m),b(::m,3),c(::m,3))
if (any(abs((/c(::4,3)/)-(/4647,4995,5343/))>0.001))print *,'error-214'
contains
subroutine sub1(x,y,z)
real(kk),dimension(:,:)::x
real(kk),dimension(:)::y,z
z(::m)=matmul(x(::m,::m),y(::m))
end subroutine sub1
end subroutine 
subroutine b224(a,b,c)
real(kk),dimension(:,:)::a,b,c
call sub1(a(::m,::m),b(::m,::m),c(::m,::m))
if (any(abs((/c(::4,::4)/)-(/1119,1179,1239,8175,8811,9447,15231,16443,17655/))>0.001))print *,'error-224'
contains
subroutine sub1(x,y,z)
real(kk),dimension(:,:)::x,y,z
z(::m,::m)=matmul(x(::m,::m),y(::m,::m))
end subroutine sub1
end subroutine 
subroutine b128(a,b,c)
real(k),dimension(:,:)::a,b,c
call sub1(a(::m,3),b(::m,::m),c(::m,3))
if (any(abs((/c(::4,3)/)-(/467,4643,8819/))>0.001))print *,'error-128'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::y
real(8),dimension(:)::x,z
z(::m)=matmul(x(::m),y(::m,::m))
end subroutine sub1
end subroutine 
subroutine b218(a,b,c)
real(k),dimension(:,:)::a,b,c
call sub1(a(::m,::m),b(::m,3),c(::m,3))
if (any(abs((/c(::4,3)/)-(/4647,4995,5343/))>0.001))print *,'error-218'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::x
real(8),dimension(:)::y,z
z(::m)=matmul(x(::m,::m),y(::m))
end subroutine sub1
end subroutine 
subroutine b228(a,b,c)
real(8),dimension(:,:)::a,b,c
call sub1(a(::m,::m),b(::m,::m),c(::m,::m))
if (any(abs((/c(::4,::4)/)-(/1119,1179,1239,8175,8811,9447,15231,16443,17655/))>0.001))print *,'error-228'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::x,y,z
z(::m,::m)=matmul(x(::m,::m),y(::m,::m))
end subroutine sub1
end subroutine 
end
use m1
parameter (n=12)
real(8),dimension(n,n)::a,b,c
real(4),dimension(n,n)::aa,bb,cc
m=2
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call b228(a,b,c)
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call b218(a,b,c)
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call b128(a,b,c)
aa=reshape((/(i,i=1,n*n)/),(/n,n/))
bb=reshape((/(i,i=1,n*n)/),(/n,n/))
cc=1.
call b224(aa,bb,cc)
aa=reshape((/(i,i=1,n*n)/),(/n,n/))
bb=reshape((/(i,i=1,n*n)/),(/n,n/))
cc=1.
call b214(aa,bb,cc)
aa=reshape((/(i,i=1,n*n)/),(/n,n/))
bb=reshape((/(i,i=1,n*n)/),(/n,n/))
cc=1.
call b124(aa,bb,cc)
print *,'pass'
end

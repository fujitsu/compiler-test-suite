module m1
parameter (k=8,kk=4)
contains
subroutine b124(a,b,c)
real(kk),dimension(:,:)::a,b,c
call sub1(a(::2,3),b(::2,::2),c(::2,3))
if (any(abs((/c(::2,3)/)-(/143,683,1223/))>0.001))print *,'error-124'
contains
subroutine sub1(x,y,z)
real(kk),dimension(:,:)::y
real(kk),dimension(:)::x,z
z(:)=matmul(x(:),y(:,:))
end subroutine sub1
end subroutine 
subroutine b214(a,b,c)
real(kk),dimension(:,:)::a,b,c
call sub1(a(::2,::2),b(::2,3),c(::2,3))
if (any(abs((/c(::2,3)/)-(/633,723,813/))>0.001))print *,'error-214'
contains
subroutine sub1(x,y,z)
real(kk),dimension(:,:)::x
real(kk),dimension(:)::y,z
z(:)=matmul(x(:,:),y(:))
end subroutine sub1
end subroutine 
subroutine b224(a,b,c)
real(kk),dimension(:,:)::a,b,c
call sub1(a(::2,::2),b(::2,::2),c(::2,::2))
if (any(abs((/c(::2,::2)/)-(/165,183,201,633,723,813,1101,1263,1425/))>0.001))print *,'error-228'
contains
subroutine sub1(x,y,z)
real(kk),dimension(:,:)::x,y,z
z(:,:)=matmul(x(:,:),y(:,:))
end subroutine sub1
end subroutine 
subroutine b128(a,b,c)
real(k),dimension(:,:)::a,b,c
call sub1(a(::2,3),b(::2,::2),c(::2,3))
if (any(abs((/c(::2,3)/)-(/143,683,1223/))>0.001))print *,'error-124'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::y
real(8),dimension(:)::x,z
z(:)=matmul(x(:),y(:,:))
end subroutine sub1
end subroutine 
subroutine b218(a,b,c)
real(k),dimension(:,:)::a,b,c
call sub1(a(::2,::2),b(::2,3),c(::2,3))
if (any(abs((/c(::2,3)/)-(/633,723,813/))>0.001))print *,'error-218'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::x
real(8),dimension(:)::y,z
z(:)=matmul(x(:,:),y(:))
end subroutine sub1
end subroutine 
subroutine b228(a,b,c)
real(8),dimension(:,:)::a,b,c
call sub1(a(::2,::2),b(::2,::2),c(::2,::2))
if (any(abs((/c(::2,::2)/)-(/165,183,201,633,723,813,1101,1263,1425/))>0.001))print *,'error-228'
contains
subroutine sub1(x,y,z)
real(8),dimension(:,:)::x,y,z
z(:,:)=matmul(x(:,:),y(:,:))
end subroutine sub1
end subroutine 
end
use m1
parameter (n=6)
real(8),dimension(n,n)::a,b,c
real(4),dimension(n,n)::aa,bb,cc
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

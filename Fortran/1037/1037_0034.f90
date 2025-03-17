module m1
parameter (k=8,kk=4)
contains
subroutine b228(a,b,c,d)
real(8),dimension(:,:)::a,b,c,d
call sub1(a(::2,::2),b(::2,::2),c(::2,::2),d(::2,::2))
if (any(abs((/c(::2,::2)/)-3-(/165,183,201,633,723,813,1101,1263,1425/))>0.001))print *,'error-228'
c=0
call sub2(a(::2,::2),b(::2,::2),c(::2,::2),d(::2,::2))
if (any(abs((/c(::2,::2)/)-3-(/165,183,201,633,723,813,1101,1263,1425/))>0.001))print *,'error-228'
c=0
call sub3(a(::2,::2),b(::2,::2),c(::2,::2),d(::2,::2))
if (any(abs((/c(::2,::2)/)-3-(/165,183,201,633,723,813,1101,1263,1425/))>0.001))print *,'error-228'
c=0
call sub4(a(::2,::2),b(::2,::2),c(::2,::2),d(::2,::2))
if (any(abs((/c(::2,::2)/)-3-(/165,183,201,633,723,813,1101,1263,1425/))>0.001))print *,'error-228'
contains
subroutine sub1(x,y,z,w)
real(8),dimension(:,:)::x,y,z,w
w=3
z(:,:)=matmul(x(:,:),y(:,:))+w(:,:)
end subroutine sub1
subroutine sub2(x,y,z,w)
real(8),dimension(:,:)::z
real(8),dimension(3,3)::x,y,w
w=3
z(:,:)=matmul(x(:,:),y(:,:))+w(:,:)
end subroutine sub2
subroutine sub3(x,y,z,w)
real(8),dimension(:,:)::w
real(8),dimension(3,3)::x,y,z
w=3
z(:,:)=matmul(x(:,:),y(:,:))+w(:,:)
end subroutine sub3
subroutine sub4(x,y,z,w)
real(8),dimension(:,:)::w,z
real(8),dimension(3,3)::x,y
w=3
z(:,:)=matmul(x(:,:),y(:,:))+w(:,:)
end subroutine sub4
end subroutine 
end
use m1
parameter (n=6)
real(8),dimension(n,n)::a,b,c,d
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
d=2.
call b228(a,b,c,d)
print *,'pass'
end

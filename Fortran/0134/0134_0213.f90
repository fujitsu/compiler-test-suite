module m1
real(8)::a(3,3)=1.,c(3,3)
real(8)::b(3,3)=2.
real(8)::x(4,4)=reshape((/(i,i=1,16)/),(/4,4/))
real(8)::bb(3,3,3)=2.
real(8)::w(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
real(8)::h(4,4)
real(8)::t(3)=2.
real(8)::u(3)
real(8)::add(3)
real(8)::q(6,6)=reshape((/(i,i=1,36)/),(/6,6/))
real(8)::r(6)=(/1,2,3,4,5,6/)
end
subroutine s
use m1
c=      matmul(a,b)
if (any(abs(c-6)>0.0001))print *,101,c
c=      matmul(a,bb(1,:,:))
if (any(abs(c-6)>0.0001))print *,102,c
k=3;m=3
c=      matmul(w,x(1:k,1:m))
if (any(abs(c-&
  reshape((/30,36,42,78,96,114,126,156,186/),(/3,3/)))>0.1))print *,203,c
h=0
h(1:k,1:m)=      matmul(w,x(1:k,1:m))
if (any(abs(h(1:k,1:m)-&
  reshape((/30,36,42,78,96,114,126,156,186/),(/3,3/)))>0.1))print *,204,c
c=      matmul(a,b(1:k,1:m))
if (any(abs(c-6)>0.0001))print *,103,c
c=      matmul(a,bb(:,:,1))
if (any(abs(c-6)>0.0001))print *,104,c
c=      matmul(a,bb(:,:,1))
if (any(abs(c-6)>0.0001))print *,105,c
u=      matmul(w,t(1:k))
if (any(abs(u-(/24,30,36/))>0.0001))print *,106,u
n=2
c=      matmul(w,q(1:6:n,1:m))
if (any(abs(c-&
  reshape((/48,57,66,120,147,174,192,237,282/),(/3,3/)))>0.1))print *,303,c
u=3;add=4
u=      matmul(w,r(1:6:n))+u+add
if (any(abs(u-7-(/48,57,66/))>0.0001))print *,306,u
u=3;add=4
u=      matmul(w,r(1:6:n))+u
if (any(abs(u-3-(/48,57,66/))>0.0001))print *,307,u
u=3;add=4
u=      matmul(w,r(1:6:n))+add
if (any(abs(u-4-(/48,57,66/))>0.0001))print *,308,u
end
call s
print *,'pass'
end

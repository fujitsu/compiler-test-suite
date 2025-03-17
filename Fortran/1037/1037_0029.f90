call b224
call b228
call b218
call b214
call b124
call b128
print *,'pass'
end
subroutine b128
parameter (n=3)
real(8),dimension(n,n)::a,b,c
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call sub1(a(:,3),b,c(:,3))
if (any(abs((/c(:,3)/)-(/50,122,194/))>0.001))print *,'error-124'
contains
subroutine sub1(x,y,z)
real(8),dimension(2:,2:)::y
real(8),dimension(2:)::x,z
z=matmul(x,y)
end subroutine sub1
end
subroutine b124
parameter (n=3)
real(4),dimension(n,n)::a,b,c
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call sub1(a(:,3),b,c(:,3))
if (any(abs((/c(:,3)/)-(/50,122,194/))>0.001))print *,'error-124'
contains
subroutine sub1(x,y,z)
real(4),dimension(2:,2:)::y
real(4),dimension(2:)::x,z
z=matmul(x,y)
end subroutine sub1
end
subroutine b214
parameter (n=3)
real(4),dimension(n,n)::a,b,c
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call sub1(a,b(:,3),c(:,3))
if (any(abs((/c(:,3)/)-(/102,126,150/))>0.001))print *,'error-214'
contains
subroutine sub1(x,y,z)
real(4),dimension(2:,2:)::x
real(4),dimension(2:)::y,z
z=matmul(x,y)
end subroutine sub1
end
subroutine b218
parameter (n=3)
real(8),dimension(n,n)::a,b,c
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call sub1(a,b(:,3),c(:,3))
if (any(abs((/c(:,3)/)-(/102,126,150/))>0.001))print *,'error-218'
contains
subroutine sub1(x,y,z)
real(8),dimension(2:,2:)::x
real(8),dimension(2:)::y,z
z=matmul(x,y)
end subroutine sub1
end
subroutine b224
parameter (n=3)
real(4),dimension(n,n)::a,b,c
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call sub1(a,b,c)
if (any(abs((/c/)-(/30,36,42,66,81,96,102,126,150/))>0.001))print *,'error-224'
contains
subroutine sub1(x,y,z)
real(4),dimension(2:,2:)::x,y,z
z=matmul(x,y)
end subroutine sub1
end
subroutine b228
parameter (n=3)
real(8),dimension(n,n)::a,b,c
a=reshape((/(i,i=1,n*n)/),(/n,n/))
b=reshape((/(i,i=1,n*n)/),(/n,n/))
c=1.
call sub1(a,b,c)
if (any(abs((/c/)-(/30,36,42,66,81,96,102,126,150/))>0.001))print *,'error-228'
contains
subroutine sub1(x,y,z)
real(8),dimension(2:,2:)::x,y,z
z=matmul(x,y)
end subroutine sub1
end

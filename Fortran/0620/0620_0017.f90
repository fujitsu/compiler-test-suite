subroutine s1
integer,allocatable::a(:,:,:),b(:,:,:)
integer(8)::addr,addr2
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
allocate(a(k2:k3+1,k1:k5+1,k3:k6+1),b(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),stat=k)
if (k/=0)print *,100
addr=loc(a)
addr2=loc(b)
if (any(ubound(a)/=[4,6,7]))print *,101
if (any(lbound(a)/=[2,1,3]))print *,103
if (    size(a)/=90)print *,104
if (addr/=loc(a))print *,102

if (any(ubound(b)/=[4,6,7]))print *,201
if (any(lbound(b)/=[2,1,3]-1))print *,203
if (    size(b)/=28*6)print *,204
if (addr2/=loc(b))print *,202
allocate(a(k2:k3+2,k1:k5+2,k3:k6+2),b(k2-2:k3+2,k1-2:k5+2,k3-2:k6+2),stat=k)
if (k==0)print *,200
if (any(ubound(a)/=[4,6,7]))print *,1101
if (any(lbound(a)/=[2,1,3]))print *,1103
if (    size(a)/=90)print *,1104
if (addr/=loc(a))print *,1102

if (any(ubound(b)/=[4,6,7]))print *,1201
if (any(lbound(b)/=[2,1,3]-1))print *,1203
if (    size(b)/=28*6)print *,1204
if (addr2/=loc(b))print *,1202
end
subroutine s2
type x
integer,allocatable::a(:,:,:),b(:,:,:)
end type
type (x)::v
integer(8)::addr,addr2
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
allocate(v%a(k2:k3+1,k1:k5+1,k3:k6+1),v%b(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),stat=k)
if (k/=0)print *,100
addr=loc(v%a)
addr2=loc(v%b)
if (any(ubound(v%a)/=[4,6,7]))print *,2101
if (any(lbound(v%a)/=[2,1,3]))print *,2103
if (    size(v%a)/=90)print *,2104
if (addr/=loc(v%a))print *,2102

if (any(ubound(v%b)/=[4,6,7]))print *,2201
if (any(lbound(v%b)/=[2,1,3]-1))print *,2203
if (    size(v%b)/=28*6)print *,2204
if (addr2/=loc(v%b))print *,2202
allocate(v%a(k2:k3+2,k1:k5+2,k3:k6+2),v%b(k2-2:k3+2,k1-2:k5+2,k3-2:k6+2),stat=k)
if (k==0)print *,2200
if (any(ubound(v%a)/=[4,6,7]))print *,21101
if (any(lbound(v%a)/=[2,1,3]))print *,21103
if (    size(v%a)/=90)print *,21104
if (addr/=loc(v%a))print *,21102

if (any(ubound(v%b)/=[4,6,7]))print *,21201
if (any(lbound(v%b)/=[2,1,3]-1))print *,21203
if (    size(v%b)/=28*6)print *,21204
if (addr2/=loc(v%b))print *,21202
end
subroutine s3(n)
type x
integer,allocatable::a(:,:,:),b(:,:,:)
end type
type (x)::v(n)
integer(8)::addr,addr2
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
allocate(v(n)%a(k2:k3+1,k1:k5+1,k3:k6+1),v(n)%b(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),stat=k)
if (k/=0)print *,100
addr=loc(v(n)%a)
addr2=loc(v(n)%b)
if (any(ubound(v(n)%a)/=[4,6,7]))print *,2101
if (any(lbound(v(n)%a)/=[2,1,3]))print *,2103
if (    size(v(n)%a)/=90)print *,2104
if (addr/=loc(v(n)%a))print *,2102

if (any(ubound(v(n)%b)/=[4,6,7]))print *,2201
if (any(lbound(v(n)%b)/=[2,1,3]-1))print *,2203
if (    size(v(n)%b)/=28*6)print *,2204
if (addr2/=loc(v(n)%b))print *,2202
allocate(v(n)%a(k2:k3+2,k1:k5+2,k3:k6+2),v(n)%b(k2-2:k3+2,k1-2:k5+2,k3-2:k6+2),stat=k)
if (k==0)print *,2200
if (any(ubound(v(n)%a)/=[4,6,7]))print *,21101
if (any(lbound(v(n)%a)/=[2,1,3]))print *,21103
if (    size(v(n)%a)/=90)print *,21104
if (addr/=loc(v(n)%a))print *,21102

if (any(ubound(v(n)%b)/=[4,6,7]))print *,21201
if (any(lbound(v(n)%b)/=[2,1,3]-1))print *,21203
if (    size(v(n)%b)/=28*6)print *,21204
if (addr2/=loc(v(n)%b))print *,21202
end
subroutine s4(v)
type x
sequence
integer,allocatable::a(:,:,:),b(:,:,:)
end type
type (x),allocatable::v(:)
integer(8)::addr,addr2
allocate(v(2))
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
allocate(v(2)%a(k2:k3+1,k1:k5+1,k3:k6+1),v(2)%b(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),stat=k)
if (k/=0)print *,100
addr=loc(v(2)%a)
addr2=loc(v(2)%b)
if (any(ubound(v(2)%a)/=[4,6,7]))print *,2101
if (any(lbound(v(2)%a)/=[2,1,3]))print *,2103
if (    size(v(2)%a)/=90)print *,2104
if (addr/=loc(v(2)%a))print *,2102

if (any(ubound(v(2)%b)/=[4,6,7]))print *,2201
if (any(lbound(v(2)%b)/=[2,1,3]-1))print *,2203
if (    size(v(2)%b)/=28*6)print *,2204
if (addr2/=loc(v(2)%b))print *,2202
allocate(v(2)%a(k2:k3+2,k1:k5+2,k3:k6+2),v(2)%b(k2-2:k3+2,k1-2:k5+2,k3-2:k6+2),stat=k)
if (k==0)print *,2200
if (any(ubound(v(2)%a)/=[4,6,7]))print *,21101
if (any(lbound(v(2)%a)/=[2,1,3]))print *,21103
if (    size(v(2)%a)/=90)print *,21104
if (addr/=loc(v(2)%a))print *,21102

if (any(ubound(v(2)%b)/=[4,6,7]))print *,21201
if (any(lbound(v(2)%b)/=[2,1,3]-1))print *,21203
if (    size(v(2)%b)/=28*6)print *,21204
if (addr2/=loc(v(2)%b))print *,21202
end
interface
subroutine s4(v)
type x
sequence
integer,allocatable::a(:,:,:),b(:,:,:)
end type
type (x),allocatable::v(:)
end subroutine
end interface
type x
sequence
integer,allocatable::a(:,:,:),b(:,:,:)
end type
type (x),allocatable::v(:)
call s1
call s2
call s3(2)
call s4(v)
print *,'pass'
end

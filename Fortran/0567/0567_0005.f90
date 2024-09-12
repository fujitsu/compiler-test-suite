type x
    integer :: ii
    integer,allocatable:: x1(:,:)
    integer,allocatable:: x2(:)
end type
  type(x),allocatable:: z1,z2,z3
  type(x)::w
integer :: st
allocate(w%x1(2,2))
allocate(w%x2(2))
w%x1=1
w%x2=2
if (any(w%x1/=1)) print *,101
allocate(z1,z2,z3,source=w, stat=st)
if(st /= 0) print *,000,st
w%x1=5
w%x2=10
if (any(z1%x1/=1)) print *,102
if (any(z2%x1/=1)) print *,103
if (any(z1%x2/=2)) print *,104
if (any(z2%x2/=2)) print *,105
if (any(z3%x1/=1)) print *,106
if (any(z3%x2/=2)) print *,106
if (any(w%x1/=5)) print *,107
if (any(w%x2/=10)) print *,108
print *,'pass'
end


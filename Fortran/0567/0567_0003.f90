type x
    integer,allocatable:: x1(:)
end type
  type(x),allocatable:: z1,z2,z3
  type(x)::w
allocate(w%x1(2))
w%x1=1
if (any(w%x1/=1)) print *,101
allocate(z1,z2,z3,source=w)
w%x1=5
if (any(z1%x1/=1)) print *,102
if (any(z2%x1/=1)) print *,103
if (any(z3%x1/=1)) print *,104
if (any(w%x1/=5)) print *,105
print *,'pass'
end


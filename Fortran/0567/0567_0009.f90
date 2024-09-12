type x
    integer :: ii
    integer,allocatable:: x2(:)
    integer,allocatable:: x1(:,:)
end type

type tt
  type(x),allocatable:: z1,z2,z3
  type(x)::w
end type

type(tt) :: obj
integer :: st

allocate(obj%w%x1(2,2))
allocate(obj%w%x2(2))
obj%w%x1=1
obj%w%x2=2
if (any(obj%w%x1/=1)) print *,101
allocate(obj%z1,obj%z2,obj%z3,source=obj%w, stat=st)
if(st /= 0) print *,000,st
obj%w%x1=5
obj%w%x2=10
if (any(obj%z1%x1/=1)) print *,102
if (any(obj%z2%x1/=1)) print *,103
if (any(obj%z1%x2/=2)) print *,104
if (any(obj%z2%x2/=2)) print *,105
if (any(obj%z3%x1/=1)) print *,106
if (any(obj%z3%x2/=2)) print *,106
if (any(obj%w%x1/=5)) print *,107
if (any(obj%w%x2/=10)) print *,108
print *,'pass'
end


type x
    integer,allocatable:: x1(:)
end type
type y
type(x),allocatable :: y1(:)    
end type
  type(y),allocatable:: z1,z2,z3
  type(y)::w
integer :: st2
allocate(w%y1(2))
allocate(w%y1(1)%x1(2))
allocate(w%y1(2)%x1(2))
w%y1(1)%x1=1
w%y1(2)%x1=2
if (any(w%y1(1)%x1/=1)) print *,101
allocate(z1,z2,z3,source=fun(w),stat=st2)
if(st2/=0) print *,202
w%y1(1)%x1=5
w%y1(2)%x1=6
if (any(z1%y1(1)%x1/=1)) print *,102
if (any(z1%y1(2)%x1/=2)) print *,103
if (any(z2%y1(1)%x1/=1)) print *,104
if (any(z2%y1(2)%x1/=2)) print *,105
if (any(z3%y1(1)%x1/=1)) print *,106
if (any(z3%y1(2)%x1/=2)) print *,107
if (any(w%y1(1)%x1/=5)) print *,108
if (any(w%y1(2)%x1/=6)) print *,109
print *,'pass'
contains
function fun(d1)
type(y)  :: d1,fun
type(y),allocatable:: z4,z5
integer :: st
Allocate(z4,z5,source=d1,stat=st)
if(st/=0) print *,201
fun = z4
end function
end


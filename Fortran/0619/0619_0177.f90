subroutine s1
type x
  integer:: xx=100
end type
type(x),allocatable,dimension(:)::a1,a2,a3
character(1000)::msg=''
allocate(a1(02:03))
a1=[x(2),x(3)]
allocate(a1(12:15),a2(23:27),a3(34:39),stat=k,errmsg=msg)
write(1,*) trim(msg)
if (k==0) print *,101
if (.not.allocated(a1))print *,100
if (any(lbound(a1)/=2))print *,102
if (any(shape (a1)/=2))print *,103
if (any(a1%xx/=[2,3]))print *,104
if (allocated(a2))print *,200

k=0
allocate(a1(112:215),a2(123:227),a3(134:239),stat=k,errmsg=msg)
write(1,*) trim(msg)
if (k==0) print *,101
if (.not.allocated(a1))print *,1100
if (any(lbound(a1)/=2))print *,1102
if (any(shape (a1)/=2))print *,1103
if (any(a1%xx/=[2,3]))print *,1104
if (allocated(a2))print *,1200
end
call s1
print *,'pass'
end


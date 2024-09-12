subroutine s1
type x
  integer:: xx=100
end type
type(x),allocatable,dimension(:)::a1,a2,a3
character(1000)::msg=''
allocate(a1(02:03))
a1=[x(2),x(3)]
allocate(a2(23:27),a3(34:39),a1(12:15),stat=k,errmsg=msg)
write(1,*) trim(msg)
if (k==0) print *,101
if (.not.allocated(a1))print *,100
if (any(lbound(a1)/=2))print *,102
if (any(shape (a1)/=2))print *,103
if (any(a1%xx/=[2,3]))print *,104
if (.not.allocated(a2))print *,200
if (any(lbound(a2)/=23))print *,202
if (any(shape (a2)/=5))print *,203
if (any(a2%xx/=100))print *,204
if (.not.allocated(a3))print *,300
if (any(lbound(a3)/=34))print *,205
if (any(shape (a3)/=6))print *,206
if (any(a3%xx/=100))print *,207

k=0
allocate(a2(123:227),a3(134:239),a1(112:215),stat=k,errmsg=msg)
write(1,*) trim(msg)
if (k==0) print *,101
if (.not.allocated(a1))print *,1100
if (any(lbound(a1)/=2))print *,1102
if (any(shape (a1)/=2))print *,1103
if (any(a1%xx/=[2,3]))print *,1104
if (.not.allocated(a2))print *,1200
if (any(lbound(a2)/=23))print *,1202
if (any(shape (a2)/=5))print *,1203
if (any(a2%xx/=100))print *,1204
if (any(lbound(a3)/=34))print *,1205
if (any(shape (a3)/=6))print *,1206
if (any(a3%xx/=100))print *,1207
if (.not.allocated(a3))print *,1300
end
call s1
print *,'pass'
end


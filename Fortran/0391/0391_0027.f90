module m1
  type y0
    integer,dimension(3)::x01=1
    integer,dimension(3)::x02=2
  end type
  type y1
    integer,dimension(3)::x11=11
    type(y0),allocatable:: x12
    integer,dimension(3)::x13=13
  end type
  type y2
    integer,dimension(3)::x21=21
    type(y1),allocatable:: x22
    integer,dimension(3)::x23=23
  end type
  type y3
    integer,dimension(3)::x31=31
    type(y2),allocatable:: x32
    integer,dimension(3)::x33=33
  end type
end
subroutine s1
use m1
  type(y3),save::v
allocate(v%x32)
allocate(v%x32%x22)
allocate(v%x32%x22%x12)
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32%x21/=21)) print *,103
if (any(v%x32%x23/=23)) print *,104
do k2=1,3
if (any(v%x32%x22%x11/=11)) print *,105
if (any(v%x32%x22%x13/=13)) print *,106
do k3=1,3
if (any(v%x32%x22%x12%x01/=1)) print *,107
if (any(v%x32%x22%x12%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp parallel private(v)
allocate(v%x32)
!$omp end parallel
end
call s1
print *,'pass'
end

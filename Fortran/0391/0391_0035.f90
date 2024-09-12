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
subroutine s4
use m1
  type(y3),allocatable::v(:)
allocate(v(3))
do k0=1,3
allocate(v(k0)%x32)
allocate(v(k0)%x32%x22)
allocate(v(k0)%x32%x22%x12)
if (any(v(k0)%x31/=31)) print *,101
if (any(v(k0)%x33/=33)) print *,102
do k1=1,3
if (any(v(k0)%x32%x21/=21)) print *,103
if (any(v(k0)%x32%x23/=23)) print *,104
do k2=1,3
if (any(v(k0)%x32%x22%x11/=11)) print *,105
if (any(v(k0)%x32%x22%x13/=13)) print *,106
do k3=1,3
if (any(v(k0)%x32%x22%x12%x01/=1)) print *,107
if (any(v(k0)%x32%x22%x12%x02/=2)) print *,108
end do
end do
end do
end do
!$omp parallel private(v)
if (.not.allocated(v)) print *,1001
do k0=1,3
if (.not.allocated(v(k0)%x32)) allocate(v(k0)%x32)
if (.not.allocated(v(k0)%x32%x22)) allocate(v(k0)%x32%x22)
if (.not.allocated(v(k0)%x32%x22%x12))allocate(v(k0)%x32%x22%x12)
if (any(v(k0)%x31/=31)) print *,101
if (any(v(k0)%x33/=33)) print *,102
do k1=1,3
if (any(v(k0)%x32%x21/=21)) print *,103
if (any(v(k0)%x32%x23/=23)) print *,104
do k2=1,3
if (any(v(k0)%x32%x22%x11/=11)) print *,105
if (any(v(k0)%x32%x22%x13/=13)) print *,106
do k3=1,3
if (any(v(k0)%x32%x22%x12%x01/=1)) print *,107
if (any(v(k0)%x32%x22%x12%x02/=2)) print *,108
end do
end do
end do
end do
!$omp end parallel
end
do k=1,3
call s4
end do
print *,'pass'
end

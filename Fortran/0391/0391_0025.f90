module m1
  type y0
    integer,dimension(3)::x01=1
    integer,dimension(3)::x02=2
  end type
  type y1
    integer,dimension(3)::x11=11
    type(y0),dimension(:),allocatable:: x12
    integer,dimension(3)::x13=13
  end type
  type y2
    integer,dimension(3)::x21=21
    type(y1),dimension(:),allocatable:: x22
    integer,dimension(3)::x23=23
  end type
  type y3
    integer,dimension(3)::x31=31
    type(y2),dimension(:),allocatable:: x32
    integer,dimension(3)::x33=33
  end type
end
subroutine s1
use m1
  type(y3),save::v
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp parallel private(v)
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp end parallel
end
subroutine s2
use m1
  type(y3)::v
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp parallel private(v)
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp end parallel
end
subroutine s3
use m1
  type(y3),pointer::v
allocate(v)
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp parallel private(v)
allocate(v)
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v%x32)
!$omp end parallel
end
subroutine s4
use m1
  type(y3),allocatable::v
allocate(v)
allocate(v%x32(3))
do k1=1,3
allocate(v%x32(k1)%x22(3))
do k2=1,3
allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
!$omp parallel private(v)
if (.not.allocated(v)) allocate(v)
if (.not.allocated(v%x32)) allocate(v%x32(3))
do k1=1,3
if (.not.allocated(v%x32(k1)%x22)) allocate(v%x32(k1)%x22(3))
do k2=1,3
if (.not.allocated(v%x32(k1)%x22(k2)%x12))allocate(v%x32(k1)%x22(k2)%x12(3))
end do
end do
if (any(v%x31/=31)) print *,101
if (any(v%x33/=33)) print *,102
do k1=1,3
if (any(v%x32(k1)%x21/=21)) print *,103
if (any(v%x32(k1)%x23/=23)) print *,104
do k2=1,3
if (any(v%x32(k1)%x22(k2)%x11/=11)) print *,105
if (any(v%x32(k1)%x22(k2)%x13/=13)) print *,106
do k3=1,3
if (any(v%x32(k1)%x22(k2)%x12(k3)%x01/=1)) print *,107
if (any(v%x32(k1)%x22(k2)%x12(k3)%x02/=2)) print *,108
end do
end do
end do
deallocate(v)
!$omp end parallel
end
do k=1,3
call s1
call s2
call s3
call s4
end do
print *,'pass'
end
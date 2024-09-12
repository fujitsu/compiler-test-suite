module m1
type x5
  integer:: x51
  integer,allocatable:: s(:,:,:,:)
end type
type x4
  integer:: x41
  type(x5),allocatable:: x42(:)
end type
type x3
  integer:: x31
  type(x4),allocatable:: x32(:)
end type
type x2
  integer:: x21
  type(x3),allocatable:: x22(:)
end type
type x1
  integer:: x11
  type(x2),allocatable:: x12(:)
end type
type(x1):: v
end
subroutine s1(N1,N2,N3,N4,N5,N6,iout)
use m1
allocate(v%x12(0:1))
do k1=0,1
allocate(v%x12(k1)%x22(0:1))
do k2=0,1
allocate(v%x12(k1)%x22(k2)%x32(1:N1))
  do k3=1,N1
allocate(v%x12(k1)%x22(k2)%x32(k3)%x42(0:N2))
  do k4=0,N2
allocate(v%x12(k1)%x22(k2)%x32(k3)%x42(k4)%s(0:N3,1:N4,1:N5,1:N6))
v%x12(k1)%x22(k2)%x32(k3)%x42(k4)%s(0:N3,1:N4,1:N5,1:N6)= &
    reshape([(n,n=1,(N3+1)*N4*N5*N6)],[N3+1,N4,N5,N6]) 
  end do
  end do
  end do
  end do

  do k1=0,1
  do k2=0,1
  do k3=1,N1
  do k4=0,N2
    write(iout) v%x12(k1)%x22(k2)%x32(k3)%x42(k4)%s(0:N3,1:N4,1:N5,1:N6)
  enddo
  enddo
  enddo
  enddo
end
parameter (N1=1,N2=2,N3=2,N4=2,N5=2,N6=2,iout=1)
call       s1(N1,N2,N3,N4,N5,N6,iout)
rewind iout
call       s2(N1,N2,N3,N4,N5,N6,iout)
print *,'pass'
end
subroutine s2(N1,N2,N3,N4,N5,N6,iout)
use m1

  do k1=0,1
  do k2=0,1
  do k3=1,N1
  do k4=0,N2
    read(iout) v%x12(k1)%x22(k2)%x32(k3)%x42(k4)%s(0:N3,1:N4,1:N5,1:N6)
  enddo
  enddo
  enddo
  enddo
do k1=0,1
do k2=0,1
  do k3=1,N1
  do k4=0,N2
if (any(v%x12(k1)%x22(k2)%x32(k3)%x42(k4)%s(0:N3,1:N4,1:N5,1:N6)/= &
    reshape([(n,n=1,(N3+1)*N4*N5*N6)],[N3+1,N4,N5,N6]) )) print *,101
  end do
  end do
  end do
  end do
end

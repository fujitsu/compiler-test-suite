integer,parameter::m=3,n=2
type z
  character(3),allocatable,dimension(:)::ch
  integer(4)  ,allocatable,dimension(:)::i4
  integer(8)  ,allocatable,dimension(:)::i8
  real   (4)  ,allocatable,dimension(:)::r4
  real   (8)  ,allocatable,dimension(:)::r8
  complex(4)  ,allocatable,dimension(:)::c4
  complex(8)  ,allocatable,dimension(:)::c8
  complex(16) ,allocatable,dimension(:)::c16
end type
type (z)                  ,dimension(m)::a
type (z)      ,allocatable,dimension(:)::b

  allocate(b(3))
  do i=1,m
    allocate(b(i)%ch(n))
    allocate(b(i)%i4(n))
    allocate(b(i)%i8(n))
    allocate(b(i)%r4(n))
    allocate(b(i)%r8(n))
    allocate(b(i)%c4(n))
    allocate(b(i)%c8(n))
    allocate(b(i)%c16(n))
    b(i)%ch(1)='ABC'
    b(i)%ch(2)='DEF'
    b(i)%i4(1)=41
    b(i)%i4(2)=42
    b(i)%i8(1)=2**32
    b(i)%i8(2)=2**32+1
    b(i)%r4(1)=41.0E0
    b(i)%r4(2)=42.0E0
    b(i)%r8(1)=81.0D0
    b(i)%r8(2)=82.0D0
    b(i)%c4(1)=(41.0E0,-41.0E0)
    b(i)%c4(2)=(42.0E0,-42.0E0)
    b(i)%c8(1)=(81.0D0,-81.0D0)
    b(i)%c8(2)=(82.0D0,-82.0D0)
    b(i)%c16(1)=(161.0D0,-161.0D0)
    b(i)%c16(2)=(162.0D0,-162.0D0)
  enddo

  a=b

  do i=1,m
    deallocate(b(i)%ch)
    deallocate(b(i)%i4)
    deallocate(b(i)%i8)
    deallocate(b(i)%r4)
    deallocate(b(i)%r8)
    deallocate(b(i)%c4)
    deallocate(b(i)%c8)
    deallocate(b(i)%c16)
  enddo
  deallocate(b)

  do i=1,m
    if (size(a(i)%ch)/=2) write(6,*) "NG"
    if (size(a(i)%i4)/=2) write(6,*) "NG"
    if (size(a(i)%i8)/=2) write(6,*) "NG"
    if (size(a(i)%r4)/=2) write(6,*) "NG"
    if (size(a(i)%r8)/=2) write(6,*) "NG"
    if (size(a(i)%c4)/=2) write(6,*) "NG"
    if (size(a(i)%c8)/=2) write(6,*) "NG"
    if (size(a(i)%c16)/=2) write(6,*) "NG"

    if (a(i)%ch(1)/='ABC'.and.a(i)%ch(2)/='DEF') write(6,*) "NG"
    if (any(a(i)%i4/=(/41,42/))) write(6,*) "NG"
    if (any(a(i)%i8/=(/2**32,2**32+1/))) write(6,*) "NG"
    if (abs(a(i)%r4(1)-41.0E0)>=1.0E-8) write(6,*) "NG"
    if (abs(a(i)%r4(2)-42.0E0)>=1.0E-8) write(6,*) "NG"
    if (abs(a(i)%r8(1)-81.0D0)>=1.0D-16) write(6,*) "NG"
    if (abs(a(i)%r8(2)-82.0D0)>=1.0D-16) write(6,*) "NG"
    if (abs(real(a(i)%c4(1))-41.0E0).gt.1.0E-16) write(6,*) "NG"
    if (abs(real(a(i)%c4(2))-42.0E0).gt.1.0E-16) write(6,*) "NG"
    if (abs(imag(a(i)%c4(1))+41.0E0).gt.1.0E-16) write(6,*) "NG"
    if (abs(imag(a(i)%c4(2))+42.0E0).gt.1.0E-16) write(6,*) "NG"
    if (abs(real(a(i)%c8(1))-81.0D0).gt.1.0D-16) write(6,*) "NG"
    if (abs(real(a(i)%c8(2))-82.0D0).gt.1.0D-16) write(6,*) "NG"
    if (abs(imag(a(i)%c8(1))+81.0D0).gt.1.0D-16) write(6,*) "NG"
    if (abs(imag(a(i)%c8(2))+82.0D0).gt.1.0D-16) write(6,*) "NG"
    if (abs(real(a(i)%c16(1))-161.0E0).gt.1.0D-32) write(6,*) "NG"
    if (abs(real(a(i)%c16(2))-162.0E0).gt.1.0D-32) write(6,*) "NG"
    if (abs(imag(a(i)%c16(1))+161.0E0).gt.1.0D-32) write(6,*) "NG"
    if (abs(imag(a(i)%c16(2))+162.0E0).gt.1.0D-32) write(6,*) "NG"
  enddo

  do i=1,m
    deallocate(a(i)%ch)
    deallocate(a(i)%i4)
    deallocate(a(i)%i8)
    deallocate(a(i)%r4)
    deallocate(a(i)%r8)
    deallocate(a(i)%c4)
    deallocate(a(i)%c8)
    deallocate(a(i)%c16)
  enddo

 print *,'pass'
end

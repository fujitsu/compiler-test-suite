integer,parameter::m=1,n=2
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
type (z)      ,allocatable,dimension(:)::a
type (z)                  ,dimension(1)::b

  allocate(a(m))
  allocate(b(m)%ch(n))
  allocate(b(m)%i4(n))
  allocate(b(m)%i8(n))
  allocate(b(m)%r4(n))
  allocate(b(m)%r8(n))
  allocate(b(m)%c4(n))
  allocate(b(m)%c8(n))
  allocate(b(m)%c16(n))
  b(m)%ch(1)='ABC'
  b(m)%ch(2)='DEF'
  b(m)%i4(1)=41
  b(m)%i4(2)=42
  b(m)%i8(1)=2**32
  b(m)%i8(2)=2**32+1
  b(m)%r4(1)=41.0E0
  b(m)%r4(2)=42.0E0
  b(m)%r8(1)=81.0D0
  b(m)%r8(2)=82.0D0
  b(m)%c4(1)=(41.0E0,-41.0E0)
  b(m)%c4(2)=(42.0E0,-42.0E0)
  b(m)%c8(1)=(81.0D0,-81.0D0)
  b(m)%c8(2)=(82.0D0,-82.0D0)
  b(m)%c16(1)=(161.0D0,-161.0D0)
  b(m)%c16(2)=(162.0D0,-162.0D0)

  a=b

  deallocate(b(m)%ch)
  deallocate(b(m)%i4)
  deallocate(b(m)%i8)
  deallocate(b(m)%r4)
  deallocate(b(m)%r8)
  deallocate(b(m)%c4)
  deallocate(b(m)%c8)
  deallocate(b(m)%c16)

  if (size(a(m)%ch)/=2) write(6,*) "NG"
  if (size(a(m)%i4)/=2) write(6,*) "NG"
  if (size(a(m)%i8)/=2) write(6,*) "NG"
  if (size(a(m)%r4)/=2) write(6,*) "NG"
  if (size(a(m)%r8)/=2) write(6,*) "NG"
  if (size(a(m)%c4)/=2) write(6,*) "NG"
  if (size(a(m)%c8)/=2) write(6,*) "NG"
  if (size(a(m)%c16)/=2) write(6,*) "NG"

  if (a(m)%ch(1)/='ABC'.and.a(m)%ch(2)/='DEF') write(6,*) "NG"
  if (any(a(m)%i4/=(/41,42/))) write(6,*) "NG"
  if (any(a(m)%i8/=(/2**32,2**32+1/))) write(6,*) "NG"
  if (abs(a(m)%r4(1)-41.0E0)>=1.0E-8) write(6,*) "NG"
  if (abs(a(m)%r4(2)-42.0E0)>=1.0E-8) write(6,*) "NG"
  if (abs(a(m)%r8(1)-81.0D0)>=1.0D-16) write(6,*) "NG"
  if (abs(a(m)%r8(2)-82.0D0)>=1.0D-16) write(6,*) "NG"
  if (abs(real(a(m)%c4(1))-41.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(real(a(m)%c4(2))-42.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(imag(a(m)%c4(1))+41.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(imag(a(m)%c4(2))+42.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(real(a(m)%c8(1))-81.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(real(a(m)%c8(2))-82.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(imag(a(m)%c8(1))+81.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(imag(a(m)%c8(2))+82.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(real(a(m)%c16(1))-161.0E0).gt.1.0D-32) write(6,*) "NG"
  if (abs(real(a(m)%c16(2))-162.0E0).gt.1.0D-32) write(6,*) "NG"
  if (abs(imag(a(m)%c16(1))+161.0E0).gt.1.0D-32) write(6,*) "NG"
  if (abs(imag(a(m)%c16(2))+162.0E0).gt.1.0D-32) write(6,*) "NG"

  deallocate(a(m)%ch)
  deallocate(a(m)%i4)
  deallocate(a(m)%i8)
  deallocate(a(m)%r4)
  deallocate(a(m)%r8)
  deallocate(a(m)%c4)
  deallocate(a(m)%c8)
  deallocate(a(m)%c16)
  deallocate(a)

 print *,'pass'
end

integer,parameter::n=2
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
type (z) a,b

  allocate(b%ch(n))
  allocate(b%i4(n))
  allocate(b%i8(n))
  allocate(b%r4(n))
  allocate(b%r8(n))
  allocate(b%c4(n))
  allocate(b%c8(n))
  allocate(b%c16(n))
  b%ch(1)='ABC'
  b%ch(2)='DEF'
  b%i4(1)=41
  b%i4(2)=42
  b%i8(1)=2**32
  b%i8(2)=2**32+1
  b%r4(1)=41.0E0
  b%r4(2)=42.0E0
  b%r8(1)=81.0D0
  b%r8(2)=82.0D0
  b%c4(1)=(41.0E0,-41.0E0)
  b%c4(2)=(42.0E0,-42.0E0)
  b%c8(1)=(81.0D0,-81.0D0)
  b%c8(2)=(82.0D0,-82.0D0)
  b%c16(1)=(161.0D0,-161.0D0)
  b%c16(2)=(162.0D0,-162.0D0)

  a=b

  deallocate(b%ch)
  deallocate(b%i4)
  deallocate(b%i8)
  deallocate(b%r4)
  deallocate(b%r8)
  deallocate(b%c4)
  deallocate(b%c8)
  deallocate(b%c16)

  if (size(a%ch)/=2) write(6,*) "NG"
  if (size(a%i4)/=2) write(6,*) "NG"
  if (size(a%i8)/=2) write(6,*) "NG"
  if (size(a%r4)/=2) write(6,*) "NG"
  if (size(a%r8)/=2) write(6,*) "NG"
  if (size(a%c4)/=2) write(6,*) "NG"
  if (size(a%c8)/=2) write(6,*) "NG"
  if (size(a%c16)/=2) write(6,*) "NG"

  if (a%ch(1)/='ABC'.and.a%ch(2)/='DEF') write(6,*) "NG"
  if (any(a%i4/=(/41,42/))) write(6,*) "NG"
  if (any(a%i8/=(/2**32,2**32+1/))) write(6,*) "NG"
  if (abs(a%r4(1)-41.0E0)>=1.0E-8) write(6,*) "NG"
  if (abs(a%r4(2)-42.0E0)>=1.0E-8) write(6,*) "NG"
  if (abs(a%r8(1)-81.0D0)>=1.0D-16) write(6,*) "NG"
  if (abs(a%r8(2)-82.0D0)>=1.0D-16) write(6,*) "NG"
  if (abs(real(a%c4(1))-41.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(real(a%c4(2))-42.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(imag(a%c4(1))+41.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(imag(a%c4(2))+42.0E0).gt.1.0E-16) write(6,*) "NG"
  if (abs(real(a%c8(1))-81.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(real(a%c8(2))-82.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(imag(a%c8(1))+81.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(imag(a%c8(2))+82.0D0).gt.1.0D-16) write(6,*) "NG"
  if (abs(real(a%c16(1))-161.0E0).gt.1.0D-32) write(6,*) "NG"
  if (abs(real(a%c16(2))-162.0E0).gt.1.0D-32) write(6,*) "NG"
  if (abs(imag(a%c16(1))+161.0E0).gt.1.0D-32) write(6,*) "NG"
  if (abs(imag(a%c16(2))+162.0E0).gt.1.0D-32) write(6,*) "NG"

  deallocate(a%ch)
  deallocate(a%i4)
  deallocate(a%i8)
  deallocate(a%r4)
  deallocate(a%r8)
  deallocate(a%c4)
  deallocate(a%c8)
  deallocate(a%c16)

 print *,'pass'
end

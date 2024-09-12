integer,parameter :: i4 = 4
integer,parameter :: i8 = 8
integer,parameter :: i16 = 16
real*4,allocatable:: ar4
real*8,allocatable:: ar8
real*16,allocatable:: ar16
real*4,pointer:: pr4
real*8,pointer:: pr8
real*16,pointer:: pr16
allocate(real(i4)::ar4)
allocate(real(i8)::ar8)
allocate(real(i16)::ar16)
allocate(real(i4)::pr4)
allocate(real(i8)::pr8)
allocate(real(i16)::pr16)
if ( kind(ar4) .ne. i4) call errtra
if ( kind(ar8) .ne. i8) call errtra
if ( kind(ar16) .ne. i16) call errtra
if ( kind(pr4) .ne. i4) call errtra
if ( kind(pr8) .ne. i8) call errtra
if ( kind(pr16) .ne. i16) call errtra
print *,'pass '
end

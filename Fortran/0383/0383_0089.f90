type base
  integer :: i
  integer :: j
endtype
type,EXTENDS(base) :: ext
  integer :: k 
  integer :: l 
end type
type (base),parameter :: aa = base(1,2)
type (ext)  :: bb = ext(aa,3,4)
bb%i=4
if ( 1 .ne. aa%i ) print *,'fail'
print *, bb%base
if ( 4 .ne. bb%base%i ) print *,'fail'
if ( 4 .ne. bb%i ) print *,'fail'
if ( 3 .ne. bb%k ) print *,'fail'
if ( 4 .ne. bb%l ) print *,'fail'
print *,'pass '
end

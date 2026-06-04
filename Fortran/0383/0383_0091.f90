type base
  integer :: i
endtype
type,EXTENDS(base) :: ext
  integer :: j 
end type
type (base),parameter :: aa = base(2)
type (ext)  :: bb = ext(aa,3)
print *, bb%base
if ( 2 .ne. bb%base%i ) print *,'fail'
if ( 2 .ne. bb%i ) print *,'fail'
if ( 3 .ne. bb%j ) print *,'fail'
bb = ext(aa,4)
print *, bb%base
if ( 2 .ne. bb%base%i ) print *,'fail'
if ( 2 .ne. bb%i ) print *,'fail'
if ( 4 .ne. bb%j ) print *,'fail'
print *,'pass '
end

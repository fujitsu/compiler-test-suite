type base
  integer :: i
endtype
type,EXTENDS(base) :: ext
  integer :: j 
end type
type,EXTENDS(ext) :: ext1
  integer :: k 
end type
type (base),parameter :: aa = base(2)
type (ext),parameter  :: bb = ext(aa,3)
type (ext1)  :: cc = ext1(bb,4)
print *, cc%base
if ( 2 .ne. cc%base%i ) print *,'fail'
if ( 2 .ne. cc%i ) print *,'fail'
if ( 3 .ne. cc%ext%j ) print *,'fail'
if ( 4 .ne. cc%k ) print *,'fail'
print *,'pass '
end

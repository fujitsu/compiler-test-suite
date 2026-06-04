module n  
  type  :: n1
   integer::x=1
   contains
     generic           :: operator( + ) => y1234
     generic           :: operator( - ) => t1234
     generic           :: assignment( = )=> xy1234
     procedure,pass :: y1234 => s1
     procedure,pass :: t1234 => s2
     procedure,pass :: xy1234 => s1x
  end type 
  type, extends(n1)   :: w12
   contains
     generic           :: operator( + ) => x12345
     generic           :: operator( - ) => w12345
     generic           :: assignment( = )=> xx12345
     procedure, pass :: x12345 => q12
     procedure, pass :: w12345 => q123
     procedure, pass :: xx12345 => q12x
  end type 
contains
 subroutine   s1x(c,a)
  class(n1),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  c%x=10
 end subroutine
 subroutine  q12x(c,a)
  class(w12),intent(inout):: c
  complex  ,intent(in):: a
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  c%x=100
 end subroutine
 function   s2(c,a)
  class(n1),intent(in):: c
  real(8)  ,intent(in):: a
  logical::s2
  if (c%x/=1) print *,10011
  if (a/=1.0) print *,100121
  s2=.true.
 end function
 function  q123(c,a)
  class(w12),intent(in):: c
  complex(8)  ,intent(in):: a
  logical::q123
  if (c%x/=1) print *,20012
  if (a/=(1,1)) print *,30012
  q123=.false.
 end function
 function   s1(c,a)
  class(n1),intent(in):: c
  real     ,intent(in):: a
  logical::s1
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  s1=.true.
 end function
 function  q12(c,a)
  class(w12),intent(in):: c
  complex  ,intent(in):: a
  logical::q12
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  q12=.false.
 end function
end
module nnd
use n
  type, extends(w12) :: i123456
    integer::gg
  end type
end
module n2
use nnd
  type, extends(i123456) :: zi123456
    integer::gt
  end type
end
module mod
  use n2
  type, extends(zi123456) :: r123456
   contains
     procedure, pass :: t1234 => g123t
     procedure, pass :: y1234 => g123 
     procedure, pass :: xy1234 => g123x 
  end type 
  type(r123456) :: aaa
contains
! subroutine  g123tx(c,a)
!  class(r123456),intent(inout):: c
!  real(8)  ,intent(in):: a
!  if (c%x/=1) print *,3001
!  if (a/=1.0) print *,3001
!   c%x=-10
! end subroutine
 subroutine  g123x(c,a)
  class(r123456),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
   c%x=-100
 end subroutine
 function  g123t(c,a)
  class(r123456),intent(in):: c
  real(8)  ,intent(in):: a
  logical::g123t
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  g123t=.false.
 end function
 function  g123(c,a)
  class(r123456),intent(in):: c
  real     ,intent(in):: a
  logical::g123
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  g123=.false.
 end function
end
use mod
  class(n1),allocatable:: v
  class(w12),allocatable:: t
  class(r123456),allocatable:: z
allocate(r123456::v,t)
  if ( v   + 1.)print *,801
  if ( t   + (1,1))print *,802
  if ( v   - 1._8)print *,8111
  if ( t   - (1._8,1))print *,8121
v=1.
if (v%x/=-100) print *,5001
t=(1,1.)
if (t%x/=100) print *,5002

deallocate(v,t)
allocate(v,t)
  if ( .not.(v   + 1.))print *,811
  if ( t   + (1,1))print *,812
  if ( .not.(v   - 1._8))print *,9811
  if ( t   - (1,1._8))print *,9812
v=1.
if (v%x/=10) print *,5021
t=(1,1.)
if (t%x/=100) print *,5022
allocate(z)
  if ( z   + 1.)print *,821
  if ( z   + (1,1))print *,822
  if ( z   - 1._8)print *,9821
  if ( z   - (1._8,1))print *,9822
z=1.
if (z%x/=-100) print *,15021
z%x=1
z=(1,1.)
if (z%x/=100) print *,15022
print *,'sngg603n : pass'
end


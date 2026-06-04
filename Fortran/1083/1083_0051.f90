module n  
  type  :: n1
   integer::x=1
   contains
!     procedure,pass :: y1234 => s1
!    generic           :: operator(.s.) => y1234
  end type 
!  type   :: w12
!   integer::x=1
!   contains
! !   procedure, pass :: x12345 => q12
! !   generic           :: operator(.s.) => x12345
!  end type 
!  type :: r123456
!   integer::x=1
!   contains
!  !  procedure, pass :: y1234 => g123 
!  end type 
  interface operator(.s.)
     procedure::s1,q12,g123
  end interface
contains
 function   s1(c,a)
  class(n1),intent(in):: c
  real     ,intent(in):: a
  logical::s1
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  s1=.true.
 end function
 function  q12(c,a)
  class(n1 ),intent(in):: c
  complex  ,intent(in):: a
  logical::q12
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  q12=.false.
 end function
 function  g123(c,a)
  class(n1     ),intent(in):: c
  real(8)  ,intent(in):: a
  logical::g123
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  g123=.false.
 end function
end
module mod
  use n
implicit none
 private!
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end
submodule (mod) m1sub
contains
  module subroutine sub1()
implicit none
  class(n1),allocatable:: z
!  class(w12),allocatable:: t
!  class(r123456),allocatable:: z
!allocate(r123456::v,t)
!  if ( v  .s.1.)print *,801
!  if ( t  .s.(1,1))print *,802
!dealloca:e(v,t)
!allocate(v,t)
!  if ( .not.(v  .s.1.))print *,811
!  if ( t  .s.(1,1))print *,812
allocate(z)
  if ( z  .s.1._8)print *,8211
  if ( z  .s.1.)print *,821
  if ( z  .s.(1,1))print *,822
end subroutine
end
use mod
print *,'sngg879n : pass'
end


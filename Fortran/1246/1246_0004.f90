module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y1234 => s1
     generic           :: operator( + ) => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: x12345 => q12
     generic           :: operator( + ) => x12345
  end type 
  type, extends(w12) :: r123456
   contains
     procedure, pass :: y1234 => g123 
  end type 
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
  class(w12),intent(in):: c
  complex  ,intent(in):: a
  logical::q12
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  q12=.false.
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
module mod
  use n
implicit none
 private
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
interface operator( + )
 procedure:: s1a
end interface
  class(n1),allocatable:: v
  class(w12),allocatable:: t
  class(r123456),allocatable:: z
allocate(r123456::v,t)
!  if ( v   + 1.)print *,801
!  if ( t   + (1,1))print *,802
deallocate(v,t)
allocate(v,t)
!  if ( .not.(v   + 1.))print *,811
!  if ( t   + (1,1))print *,812
allocate(z)
!  if ( z   + 1.)print *,821
!  if ( z   + (1,1))print *,822
  if ( z   + 'a')print *,822
contains
 function   s1a(c,a)
  class(n1),intent(in):: c
  character,intent(in):: a
  logical::s1a
!  if (c%x/=1) print *,1001
!  if (a/=1.0) print *,1001
  s1a=.true.
 end function
end subroutine
end
use mod
print *,'pass'
end


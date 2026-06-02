module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y1234 => s1
     !generic           :: operator(.s.) => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: x12345 => q12
     generic           :: operator(.s.) => x12345
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
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, pass :: z1234 => g123 
  end type 
  type(r123456) :: aaa
contains
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
  class(w12),allocatable:: v
complex::z=(1,1)
allocate(r123456::v)
  if ( v  .s.z    )print *,802
print *,'sngg562n : pass'
end


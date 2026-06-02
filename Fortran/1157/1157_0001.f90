module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: y1234 => s1
     generic           :: assignment( = ) => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: x12345 => q12
     generic           :: assignment( = ) => x12345
  end type 
contains
 subroutine   s1(c,a)
  class(n1),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,1001
  if (a/=1.0) print *,1001
  c%x=c%x+1
 end subroutine
 subroutine  q12(c,a)
  class(w12),intent(inout):: c
  complex  ,intent(in):: a
  if (c%x/=1) print *,2001
  if (a/=(1,1)) print *,3001
  c%x=c%x+10
 end subroutine
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, pass :: y1234 => g123 
  end type 
  type(r123456) :: aaa
contains
 subroutine  g123(c,a)
  class(r123456),intent(inout):: c
  real     ,intent(in):: a
  if (c%x/=1) print *,3001
  if (a/=1.0) print *,3001
  c%x=c%x+1000
 end subroutine
end
use mod
  class(n1),allocatable:: v
allocate(r123456::v)
  v= 1.
  if (v%x/=1001) print *,901,v%x
print *,'sngg710n : pass'
end


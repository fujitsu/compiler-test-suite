module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: t1234 => s2
     !generic           :: assignment( = ) => t1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: w12345 => q123
     generic           :: assignment( = ) => w12345
  end type 
contains
 subroutine   s2(c,a)
  class(n1),intent(inout):: c
  real(8)  ,intent(in):: a
  if (c%x/=1) print *,10011
  if (a/=1.0) print *,100121
c%x=100
 end subroutine
 subroutine  q123(c,a)
  class(w12),intent(inout):: c
  complex(8)  ,intent(in):: a
  if (c%x/=1) print *,20012
  if (a/=(1,1)) print *,30012
c%x=1000
 end subroutine
end
module mod
  use n
  type, extends(w12) :: r123456
  end type 
  type(r123456) :: aaa
end
use mod
  class(w12),allocatable:: t
allocate(t)
t=(1._8,1)
if (t%x/=1000)print *,1001
t%x=1
call  t%w12345( (1._8,1) )
if (t%x/=1000)print *,81212
print *,'sngg601n : pass'
end


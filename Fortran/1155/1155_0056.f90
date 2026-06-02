module n  
  type  :: n1
   integer::x=1
   contains
     procedure,pass :: t1234 => s2
     !generic           :: operator(.t.) => t1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, pass :: w12345 => q123
     generic           :: operator(.t.) => w12345
  end type 
contains
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
  if ( t  .t.(1._8,1))print *,8121
  if (t%w12345( (1._8,1) ))print *,81212
print *,'sngg565n : pass'
end


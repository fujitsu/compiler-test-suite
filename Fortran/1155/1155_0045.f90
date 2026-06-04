module n  
  type  :: n1
   contains
     procedure, nopass :: y1234 => s1
     generic           :: set => y1234
  end type 
  type, extends(n1)   :: p12
   contains
     procedure, nopass :: x12345 => q12
     generic           :: set => x12345
  end type 
  real(8) :: val=2.0
contains
 subroutine s1()
write(38,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(38,*)int(val)
 end subroutine 
 subroutine g123()
write(38,*)3
 end subroutine 
 subroutine u12356(k)
write(38,*)k
 end subroutine 
 subroutine r1235678(k,kk)
write(38,*)k+kk
 end subroutine 
 subroutine m12 ()
write(38,*)6
 end subroutine 
end
module smod
use n
  type, extends(p12)   :: f123
  end type 
end
module rmod
use smod
  type, extends(f123)   :: p1234567890
  contains
     generic::y_set=>f123467
     generic::set=>f123467
     procedure, nopass :: f123467 => r1235678
     procedure, nopass :: y1234   => m12
  end type 
end
module vmod
use rmod
  type, extends(p1234567890)   :: w12
  end type 
end
module mod
  use vmod
  type, extends(w12) :: r123456a
   contains
     procedure, nopass :: y1234 => g123 
     procedure, nopass :: o123456789 => u12356
     generic::set=>o123456789
  end type
  type(r123456a) :: a 
end
use mod
  call a%set(val)
  call a%set(   )
  call a%set(4   )
  call a%set(2,3)
rewind 38
read(38,*)n;if(n/=2)print *,101
read(38,*)n;if(n/=3)print *,101
read(38,*)n;if(n/=4)print *,101
read(38,*)n;if(n/=5)print *,1011
read(38,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg554n : pass'
end


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
write(36,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(36,*)int(val)
 end subroutine 
 subroutine g123()
write(36,*)3
 end subroutine 
 subroutine u12356(k)
write(36,*)k
 end subroutine 
 subroutine r1235678(k,kk)
write(36,*)k+kk
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
     procedure, nopass :: f123467 => r1235678
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
  type, extends(w12) :: r123456b
   contains
     generic::set=>o123456789
     procedure, nopass :: y1234 => g123 
     procedure, nopass :: o123456789 => u12356
  end type 
  type(r123456b) :: b  
  type, extends(w12) :: r123456c
   contains
     procedure, nopass :: y1234 => g123 
     generic::set=>o123456789
     procedure, nopass :: o123456789 => u12356
  end type 
  type(r123456c) :: c  
  type, extends(w12) :: r123456d
   contains
     procedure, nopass :: o123456789 => u12356
     procedure, nopass :: y1234 => g123 
     generic::set=>o123456789
  end type
  type(r123456d) :: d  
  type, extends(w12) :: r123456e
   contains
     generic::set=>o123456789
     procedure, nopass :: o123456789 => u12356
     procedure, nopass :: y1234 => g123 
  end type
  type(r123456e) :: e  
  type, extends(w12) :: r123456f
   contains
     procedure, nopass :: o123456789 => u12356
     generic::set=>o123456789
     procedure, nopass :: y1234 => g123 
  end type
  type(r123456f) :: f  
end
use mod
  call a%set(val)
  call a%set(   )
  call a%set(4   )
  call b%set(val)
  call b%set(   )
  call b%set(4   )
  call c%set(val)
  call c%set(   )
  call c%set(4   )
  call d%set(val)
  call d%set(   )
  call d%set(4   )
  call e%set(val)
  call e%set(   )
  call e%set(4   )
  call f%set(val)
  call f%set(   )
  call f%set(4   )
  call a%y_set(2,3)
  call b%y_set(2,3)
  call c%y_set(2,3)
  call d%y_set(2,3)
  call e%y_set(2,3)
  call f%y_set(2,3)
rewind 36
do kk=1,6
read(36,*)n;if(n/=2)print *,101
read(36,*)n;if(n/=3)print *,101
read(36,*)n;if(n/=4)print *,101
end do
do kk=1,6
read(36,*)n;if(n/=5)print *,1011
end do
read(36,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg552n : pass'
end


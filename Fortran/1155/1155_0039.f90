module n  
  type  :: n1
   contains
     procedure, nopass :: y1234 => s1
     generic           :: set => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, nopass :: x12345 => q12
     generic           :: set => x12345
  end type 
  real(8) :: val=2.0
contains
 subroutine s1()
write(33,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(33,*)int(val)
 end subroutine 
 subroutine g123()
write(33,*)3
 end subroutine 
 subroutine u12356(k)
write(33,*)k
 end subroutine 
end
module mod
  use n
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
rewind 33
do kk=1,6
read(33,*)n;if(n/=2)print *,101
read(33,*)n;if(n/=3)print *,101
read(33,*)n;if(n/=4)print *,101
end do
read(33,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg548n : pass'
end


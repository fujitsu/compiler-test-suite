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
  real(8) :: val
contains
 subroutine s1()
write(31,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(31,*)2
 end subroutine 
 subroutine g123()
write(31,*)3
 end subroutine 
 subroutine u12356(k)
write(31,*)k
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: y1234 => g123 
     generic::set=>o123456789
     procedure, nopass :: o123456789 => u12356
  end type 
  type(r123456) :: aaa
end
use mod
  call aaa%set(val)
  call aaa%set(   )
  call aaa%set(4   )
rewind 31
read(31,*)n;if(n/=2)print *,101
read(31,*)n;if(n/=3)print *,101
read(31,*)n;if(n/=4)print *,101
read(31,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg546n : pass'
end


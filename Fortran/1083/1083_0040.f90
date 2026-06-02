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
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: z1234 => g123 
     generic           :: set => z1234
  end type 
contains
 subroutine s1()
write(1,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(in) :: val
write(1,*)int(val)
 end subroutine 
 subroutine g123(k)
write(1,*)k
 end subroutine 
end
module mm
use n
implicit none
 private
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end
submodule (mm) m1sub
  type(r123456) :: aaa
contains
  module subroutine sub1()
implicit none
  call aaa%set(   )
  call aaa%set(2.0_8)
  call aaa%set(3  )
end subroutine
end
use mm
call sub1
rewind 1
read(1,*)n;if(n/=1)print *,1011
read(1,*)n;if(n/=2)print *,1012
read(1,*)n;if(n/=3)print *,1013
read(1,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg864n : pass'
end

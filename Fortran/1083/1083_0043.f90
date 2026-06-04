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
interface st
  procedure::s1,g123,q12
end interface

contains
 subroutine s1()
write(4,*)1
 end subroutine
 subroutine q12(val)
  real(8), intent(in) :: val
write(4,*)int(val)
 end subroutine
 subroutine g123(k)
write(4,*)k
 end subroutine
end
module mm
use n
implicit none
 private::st,r123456
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
  call st(   )
  call st(2.0_8)
  call st(3  )
end subroutine
end
use mm
call sub1
rewind 4
read(4,*)n;if(n/=1)print *,1011
read(4,*)n;if(n/=2)print *,1012
read(4,*)n;if(n/=3)print *,1013
read(4,*)n;if(n/=1)print *,10111
read(4,*)n;if(n/=2)print *,10121
read(4,*)n;if(n/=3)print *,10131
read(4,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg867n : pass'
end

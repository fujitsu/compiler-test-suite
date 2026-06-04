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
write(21,*)1
 end subroutine
 subroutine q12(val)
  real(8), intent(in) :: val
write(21,*)int(val)
 end subroutine
 subroutine g123(k)
write(21,*)k
 end subroutine
end
module n2
use n
end
module n3
use n2
end
module n4
use n3
  type(r123456) :: aaa
private
public::aaa
end
module mm
use n4
implicit none
 private::aaa
public::sub1,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub1()
     end subroutine
  end interface
end
submodule (mm) m1sub
contains
  module subroutine sub1()
implicit none
  call aaa%set(   )
  call aaa%set(2.0_8)
  call aaa%set(3  )
end subroutine
end
submodule (mm:m1sub) m2sub
end
submodule (mm:m2sub) m3sub
end
submodule (mm:m3sub) m4sub
end
submodule (mm:m4sub) m5sub
contains
  module subroutine sub2()
implicit none
  call aaa%set(   )
  call aaa%set(2.0_8)
  call aaa%set(3  )
end subroutine
end
use mm
call sub1
call sub2
rewind 21
read(21,*)n;if(n/=1)print *,1011
read(21,*)n;if(n/=2)print *,1012
read(21,*)n;if(n/=3)print *,1013
read(21,*)n;if(n/=1)print *,1011
read(21,*)n;if(n/=2)print *,1012
read(21,*)n;if(n/=3)print *,1013
read(21,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg149o : pass'
end

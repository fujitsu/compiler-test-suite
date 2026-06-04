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
write(1,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(1,*)2
 end subroutine 
 subroutine g123(k)
write(1,*)3
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: z => g123
     generic           :: set => z
  end type 
end
use mod
  class(r123456),pointer :: aaa
allocate(r123456::aaa)
  call aaa%set(val)
  call aaa%set(   )
  call aaa%set(1  )
rewind 1
read(1,*)n;if(n/=2)print *,101
read(1,*)n;if(n/=1)print *,1012
read(1,*)n;if(n/=3)print *,10121
read(1,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg714n : pass'
end


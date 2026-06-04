module n  
  type  :: n1
   contains
     procedure, nopass :: y1234 => s1
     procedure, nopass :: y12345 => s12
     generic           :: set => y1234
     generic           :: tet => y12345
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, nopass :: x12345 => q12
     procedure, nopass :: x123456 => q123
     generic           :: tet => x123456
     generic           :: set => x12345
  end type 
contains
 subroutine s1()
write(43,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(43,*)2
 end subroutine 
 subroutine g123()
write(43,*)3
 end subroutine 
 subroutine s12(k)
write(43,*)4
 end subroutine 
 subroutine q123(val)
  real(4), intent(inout) :: val
write(43,*)5
 end subroutine 
 subroutine g1234(k)
write(43,*)6
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: y1234 => g123 
     procedure, nopass :: y12345 => g1234
  end type 
  type(r123456) :: aaa
end
use mod
  real(8) :: val8
  real(4) :: val4
  call aaa%set(val8)
  call aaa%set(   )
  call aaa%tet(k  )
  call aaa%Tet(val4)
rewind 43
read(43,*)n;if(n/=2)print *,101
read(43,*)n;if(n/=3)print *,101
read(43,*)n;if(n/=6)print *,101
read(43,*)n;if(n/=5)print *,101
read(43,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg572n : pass'
end


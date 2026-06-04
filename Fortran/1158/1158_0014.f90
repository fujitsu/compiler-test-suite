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
contains
 subroutine s1()
write(22,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(22,*)2
 end subroutine 
 subroutine g123()
write(22,*)3
 end subroutine 
 subroutine b1234567(k)
  integer, intent(inout) :: k
write(22,*)4
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: u12345678 => b1234567
     !generic:: set=>u12345678
  end type 
end
use mod
  real(8) :: val
  integer::k
  type(r123456) :: aaa
  call aaa%set(val)
  !call aaa%set(k  )
  call aaa%set(   )
  call aaa%x12345(val)
  call aaa%u12345678(k  )
  call aaa%y1234(   )
rewind 22
read(22,*)n;if(n/=2)print *,101
!read(22,*)n;if(n/=4)print *,101
read(22,*)n;if(n/=1)print *,101
read(22,*)n;if(n/=2)print *,1011
read(22,*)n;if(n/=4)print *,1012
read(22,*)n;if(n/=1)print *,1031
read(22,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg797n : pass'
end


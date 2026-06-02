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
write(16,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(16,*)2
 end subroutine 
 subroutine g123()
write(16,*)3
 end subroutine 
 subroutine b1234567(k)
  integer, intent(inout) :: k
write(16,*)4
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: u12345678 => b1234567
     generic:: set=>u12345678
     procedure, nopass :: y1234 => g123 
  end type 
  type(r123456) :: aaa
end
use mod
  real(8) :: val
  integer::k
  call aaa%set(val)
  call aaa%set(k  )
  call aaa%set(   )
rewind 16
read(16,*)n;if(n/=2)print *,101
read(16,*)n;if(n/=4)print *,101
read(16,*)n;if(n/=3)print *,101
read(16,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg515n : pass'
end


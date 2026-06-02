module n  
  type  :: n1
   contains
     procedure, nopass :: y1234 => s1
     procedure, nopass :: e12345678 => h1234567
     generic           :: set => y1234,e12345678
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, nopass :: x12345 => q12
     generic           :: set => x12345
  end type 
contains
 subroutine s1()
write(13,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(13,*)2
 end subroutine 
 subroutine g123()
write(13,*)3
 end subroutine 
 subroutine h1234567(k)
  integer,intent(in)::k
write(13,*)4
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: y1234 => g123 
  end type 
  type(r123456) :: aaa
end
use mod
  integer::k=1
  call aaa%set(   )
  call aaa%set(k  )
rewind 13
read(13,*)n;if(n/=3)print *,101
read(13,*)n;if(n/=4)print *,101
read(13,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg512n : pass'
end


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
write(14,*)0
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(14,*)1
 end subroutine 
 subroutine g123(val)
  real(8), intent(inout) :: val
write(14,*)2
 end subroutine 
 subroutine h1234567(k)
  integer,intent(in)::k
write(14,*)3
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: x12345 => g123 
  end type 
  type(r123456) :: aaa
end
use mod
  real(8) :: val=1.0
  !integer::k=1
  call aaa%set(val)
  call aaa%set(   )
  !call aaa%set(k  )
rewind 14
read(14,*)n;if(n/=2)print *,101
read(14,*)n;if(n/=0)print *,101
read(14,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg513n : pass'
end


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
write(25,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(25,*)2
 end subroutine 
 subroutine g123()
write(25,*)3
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: y1234 => g123 
  end type 
end
use mod
  type(r123456) :: aaa
  type(w12    ) :: bb
  type(n1     ) :: c
  call aaa%set(val)
  call aaa%set(   )
  call bb %set(val)
  call bb %set(   )
  call c  %set(   )
rewind 25
read(25,*)n;if(n/=2)print *,101
read(25,*)n;if(n/=3)print *,102

read(25,*)n;if(n/=2)print *,103
read(25,*)n;if(n/=1)print *,104

read(25,*)n;if(n/=1)print *,105
read(25,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg531n : pass'
end


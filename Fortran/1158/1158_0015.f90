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
write(23,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(23,*)2
 end subroutine 
 subroutine g123()
write(23,*)3
 end subroutine 
 subroutine b1234567(k)
  integer, intent(inout) :: k
write(23,*)4
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: u12345678 => b1234567
     procedure, nopass :: y1234  => g123
     !!generic:: set=>u12345678
  end type 
end
use mod
  real(8) :: val
  integer::k
  type(w12    ) :: b   
  type(r123456) :: aaa
  call b%set(val)
  call b%set()
  call b%x12345(val)
  call b%y1234(   )

  call aaa%set(val)
  !call aaa%set(k  )
  call aaa%set(   )
  call aaa%x12345(val)
  call aaa%u12345678(k  )
  call aaa%y1234(   )
rewind 23
read(23,*)n;if(n/=2)print *,10111
read(23,*)n;if(n/=1)print *,10312
read(23,*)n;if(n/=2)print *,101111
read(23,*)n;if(n/=1)print *,103122

read(23,*)n;if(n/=2)print *,101
!read(23,*)n;if(n/=4)print *,101
read(23,*)n;if(n/=3)print *,101
read(23,*)n;if(n/=2)print *,1011
read(23,*)n;if(n/=4)print *,1012
read(23,*)n;if(n/=3)print *,1031
read(23,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg798n : pass'
end


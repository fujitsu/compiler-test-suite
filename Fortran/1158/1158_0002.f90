module n  
  type  :: n1
   contains
     procedure, nopass :: y1234 => s1
     generic           :: set => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, nopass :: y1234 => q12
     generic           :: set => y1234
  end type 
  real(8) :: val
contains
 subroutine s1()
write(15,*)1
 end subroutine 
 subroutine q12()
write(15,*)2
 end subroutine 
 subroutine g123()
write(15,*)3
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     generic           :: set => y1234
     procedure, nopass :: y1234 => g123
  end type 
end
use mod
  class(n1),pointer :: aaa
allocate(n1     ::aaa)
  call aaa%set(   )
allocate(w12    ::aaa)
  call aaa%set(   )
allocate(r123456::aaa)
  call aaa%set(   )
rewind 15
read(15,*)n;if(n/=1)print *,101
read(15,*)n;if(n/=2)print *,1012
read(15,*)n;if(n/=3)print *,10121
read(15,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg784n : pass'
end


module n  
  type  :: n1
   contains
     procedure, nopass :: y1234 => s1
     generic           :: set => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, nopass :: y1234 => q12
     !!!generic           :: set => y1234
  end type 
  real(8) :: val
contains
 subroutine s1()
write(1,*)1
 end subroutine 
 subroutine q12()
write(1,*)2
 end subroutine 
 subroutine g123()
write(1,*)3
 end subroutine 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     procedure, nopass :: y1234 => g123
     !!!generic           :: set => y1234
  end type 
end
use mod
  class(n1),pointer :: aaa
allocate(n1     ::aaa)
  call aaa%y1234(   )
  call aaa%set  (   )
allocate(w12    ::aaa)
  call aaa%y1234(   )
  call aaa%set  (   )
allocate(r123456::aaa)
  call aaa%y1234(   )
  call aaa%set  (   )
rewind 1
read(1,*)nn;if(nn/=1)print *,101
read(1,*)nn;if(nn/=1)print *,1013
read(1,*)nn;if(nn/=2)print *,1012
read(1,*)nn;if(nn/=2)print *,1014
read(1,*)nn;if(nn/=3)print *,10121
read(1,*)nn;if(nn/=3)print *,1015
read(1,*,end=9)nn;if(nn/=3)print *,101
9 continue
print *,'sngg717n : pass'
end


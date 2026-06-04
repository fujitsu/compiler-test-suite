!
! This program is an error program.
! 
!   10 |      generic           :: set => y1234
!      |                                1
!Error: ‘q12’ and ‘s1’ for GENERIC ‘set’ at (1) are ambiguous
module nm  
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
write(1,*)1
 end subroutine 
 subroutine q12()
write(1,*)2
 end subroutine 
end
  use nm
  class(n1),pointer :: aaa
  class(w12),pointer :: baa
allocate(n1     ::aaa)
  call aaa%set(   )
allocate(w12    ::aaa)
  call aaa%set(   )
allocate(w12    ::baa)
  call baa%set(   )
rewind 1
read(1,*)n;if(n/=1)print *,101
read(1,*)n;if(n/=2)print *,1012
read(1,*)n;if(n/=2)print *,10121
read(1,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg720n : pass'
end


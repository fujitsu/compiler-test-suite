module mm
contains
 subroutine s1()
write(26,*)1
 end subroutine 
 subroutine q12(val)
  real(8), intent(inout) :: val
write(26,*)2
 end subroutine 
 subroutine g123()
write(26,*)3
 end subroutine 
 subroutine b1234567(k)
  integer, intent(inout) :: k
write(26,*)4
 end subroutine 
end
module n  
use mm,xs1=>s1,xq12=>q12,xg123=>g123,b1=>b1234567
  type  :: n1
   contains
     procedure, nopass :: y1234 => xs1
     generic           :: set => y1234
  end type 
  type, extends(n1)   :: w12
   contains
     procedure, nopass :: x12345 => xq12
     generic           :: set => x12345
  end type 
end
module mod
  use n
  type, extends(w12) :: r123456
   contains
     generic:: set=>u12345678
     procedure, nopass :: u12345678 => b1
     procedure, nopass :: y1234  => xg123
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
  call aaa%set(k  )
  call aaa%set(   )
  call aaa%x12345(val)
  call aaa%u12345678(k  )
  call aaa%y1234(   )
rewind 26
read(26,*)n;if(n/=2)print *,10111
read(26,*)n;if(n/=1)print *,10312
read(26,*)n;if(n/=2)print *,101111
read(26,*)n;if(n/=1)print *,103122

read(26,*)n;if(n/=2)print *,101
read(26,*)n;if(n/=4)print *,101
read(26,*)n;if(n/=3)print *,101
read(26,*)n;if(n/=2)print *,1011
read(26,*)n;if(n/=4)print *,1012
read(26,*)n;if(n/=3)print *,1031
read(26,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg801n : pass'
end


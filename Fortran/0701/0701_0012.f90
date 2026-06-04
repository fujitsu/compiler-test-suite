 call s1
 print *,'pass'
 end
 module m1
  integer ii
 end
 subroutine s1
  use m1
  do ii=0,100
    call ss1
  end do
contains
subroutine ss1
  character*(ii) a(0),b(0)
  character*0 a1,b1
  call ss(a,b)
  call tt(a1,b1)
  end subroutine
  end
  subroutine ss(a,b)
  use m1
  character*(*) a(0),b(0)
  call sub(a//b)
  contains
  subroutine sub(x)
  character*(*) x(*)
  if (len(x)/=ii*2)print *,'fail'
  end subroutine
  end
  subroutine tt(a,b)
  use m1
  character*(*) a,b
  call sub(a//b)
  contains
  subroutine sub(x)
  character*(*) x
  if (len(x)/=0)print *,'fail'
  end subroutine
  end

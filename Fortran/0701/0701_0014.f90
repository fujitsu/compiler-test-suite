 call s1
 print *,'pass'
 end
 module m1
  integer ii,jj
 end
 subroutine s1
  use m1
  do jj=0,100,2
  do ii=0,100,2
    call ss1
  end do
  end do
contains
subroutine ss1
  character*(ii) a(jj),b(jj)
  character*(ii) a1,b1
  a=repeat('a',ii) 
  b=repeat('b',ii) 
  a1=repeat('c',ii) 
  b1=repeat('d',ii) 
  call ss(a,b)
  call tt(a1,b1)
  end subroutine
  end
  subroutine ss(a,b)
  use m1
  character*(*) a(jj),b(jj)
  call sub(a//b)
  contains
  subroutine sub(x)
  character*(*) x(:)
  if (len(x)/=ii*2)print *,'fail'
  if (any(x/=repeat('a',ii)//repeat('b',ii)))print *,'fail'
  end subroutine
  end
  subroutine tt(a,b)
  use m1
  character*(*) a,b
  call sub(a//b)
  contains
  subroutine sub(x)
  character*(*) x
  if (len(x)/=ii*2)print *,'fail'
  if (x/=repeat('c',ii)//repeat('d',ii))print *,'fail'
  end subroutine
  end

 call s1
 print *,'pass'
 end
 subroutine s1
  character*2,dimension(2):: a,b
  a='x';b='x'
  call ss(a,b,2,1)
  end
  subroutine ss(a,b,i,j)
  character*(2) a(i),b(i)
  call sub0(a(i)(1:j)//b(i)(1:j))
  call sub(a(:)(1:j)//b(:)(1:j))
  contains
  subroutine sub(x)
  character*(*) x(:)
  if (len(x)/=2)print *,'fail'
  end subroutine
  end
  subroutine sub0(x)
  character*(*) x
  if (len(x)/=2)print *,'fail'
  end subroutine

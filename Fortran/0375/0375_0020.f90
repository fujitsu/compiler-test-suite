module m1
  interface s
     module procedure s1,s2
  end interface
  contains
  subroutine s1(i)
  i=1
  end subroutine 
  subroutine s2(a)
  a=2
  end subroutine 
end
use m1
interface s
  subroutine s3(a)
  complex a
  end subroutine 
end interface
complex c
call s(j)
if (j/=1)call errtra
call s(b)
if (abs(b-2)>0.001)call errtra
call s(c)
if (abs(c-(3,3))>0.001)call errtra
print *,'pass'
end
  subroutine s3(a)
  complex a
  a=(3,3)
  end subroutine 
subroutine errtra
print *,'error'
end

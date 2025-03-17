module m3
  interface s
     module procedure s4
  end interface
  contains
  subroutine s4(a)
  character a
  a='1'
  end subroutine 
end 
module m2
  interface s
     module procedure s3
  end interface
  contains
  subroutine s3(a)
  complex a
  a=(3,3)
  end subroutine 
end 
module m1
use m2
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
use m3
complex c
character d
call s(j)
if (j/=1)print *,'fail'
call s(b)
if (abs(b-2)>0.001)print *,'fail'
call s(c)
if (abs(c-(3,3))>0.001)print *,'fail'
call s(d)
if (d/='1')print *,'fail'
print *,'pass'
end

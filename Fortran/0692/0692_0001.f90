module m1
contains
 subroutine s3(k,j,i)
 complex   ,value::i,j,k
    if (abs(k-(1,1))>0.001)print *,'fail'
    if (abs(j-(2,2))>0.001)print *,'fail'
    if (abs(i-(3,3))>0.001)print *,'fail'
  k=400
  i=300
  j=200
  end subroutine
end
use m1
 complex::i,j,k
i=(1,1)
j=(2,2)
k=(3,3)
call s3(i,j,k)
    if (abs(i-(1,1))>0.001)print *,'fail'
    if (abs(j-(2,2))>0.001)print *,'fail'
    if (abs(k-(3,3))>0.001)print *,'fail'
print *,'pass'
end

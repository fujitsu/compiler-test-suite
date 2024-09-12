module m1
contains
 subroutine s3(k,j,i,c1,c2)
 complex   ,value::i,j,k
 character(2),value::c1
 character(*)      ::c2
    if (abs(k-(1,1))>0.001)call errtra
    if (abs(j-(2,2))>0.001)call errtra
    if (abs(i-(3,3))>0.001)call errtra
    if (c1/='12')call errtra
    if (c2/='345')call errtra
    if (len(c2)/=3)call errtra
  k=400
  i=300
  j=200
  c1='ab'
  c2='cde'
  end subroutine
end
use m1
 complex::i,j,k
 character      ::c1*2,c2*3
i=(1,1)
j=(2,2)
k=(3,3)
c1='12'
c2='345'
call s3(i,j,k,c1,c2)
    if (abs(i-(1,1))>0.001)call errtra
    if (abs(j-(2,2))>0.001)call errtra
    if (abs(k-(3,3))>0.001)call errtra
    if (c1/='12')call errtra
    if (c2/='cde')call errtra
print *,'pass'
end
subroutine errtra
print *,'error'
end

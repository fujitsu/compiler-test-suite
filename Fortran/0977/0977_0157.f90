module m1
contains
 subroutine s3(k,j,i)
 real   ,value::i,j,k
    if (abs(k-1)>0.001)write(6,*) "NG"
    if (abs(j-2)>0.001)write(6,*) "NG"
    if (abs(i-3)>0.001)write(6,*) "NG"
  k=400
  i=300
  j=200
  end subroutine
end
use m1
 real   ::i,j,k
i=1
j=2
k=3
call s3(i,j,k)
    if (abs(i-1)>0.001)write(6,*) "NG"
    if (abs(j-2)>0.001)write(6,*) "NG"
    if (abs(k-3)>0.001)write(6,*) "NG"
print *,'pass'
end

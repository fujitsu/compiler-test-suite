module m1
contains
 subroutine s3(k,j,i)
 integer(8),value::i,j,k
    if (k/=1)write(6,*) "NG"
    if (j/=2)write(6,*) "NG"
    if (i/=3)write(6,*) "NG"
  k=400
  i=300
  j=200
  end subroutine
end
use m1
 integer(8)      ::i,j,k
i=1
j=2
k=3
call s3(i,j,k)
if (i/=1)write(6,*) "NG"
if (j/=2)write(6,*) "NG"
if (k/=3)write(6,*) "NG"
print *,'pass'
end

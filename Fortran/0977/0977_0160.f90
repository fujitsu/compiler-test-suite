module m1
contains
 subroutine s3(k,j,i)
 character,value::i,j,k
    if (k/='1')write(6,*) "NG"
    if (j/='2')write(6,*) "NG"
    if (i/='3')write(6,*) "NG"
  k='a'
  i='b'
  j='c'
  end subroutine
end
use m1
 character::i,j,k
i='1'
j='2'
k='3'
call s3(i,j,k)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
print *,'pass'
end

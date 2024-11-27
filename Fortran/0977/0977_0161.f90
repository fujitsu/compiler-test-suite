module m1
contains
 subroutine s3(k,j,i,n)
 character,value::i,j,k
 character(*)     n
    if (k/='1')write(6,*) "NG"
    if (j/='2')write(6,*) "NG"
    if (i/='3')write(6,*) "NG"
    if (n/='567')write(6,*) "NG"
    if (len(n)/=3)write(6,*) "NG"
  k='a'
  i='b'
  j='c'
  n='xyz'
  end subroutine
end
use m1
 character::i,j,k,n*3
i='1'
j='2'
k='3'
n='567'
call s3(i,j,k,n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
print *,'pass'
end

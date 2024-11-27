module m1
contains
 subroutine s3(k,j,i,n)
 character,optional,value::i,j,k
 character(*),optional::     n
 if (present(k)) then
    if (k/='1')write(6,*) "NG"
  k='a'
 endif
 if (present(j)) then
    if (j/='2')write(6,*) "NG"
  j='c'
 endif
 if (present(i)) then
    if (i/='3')write(6,*) "NG"
  i='b'
 endif
 if (present(n)) then
    if (n/='567')write(6,*) "NG"
    if (len(n)/=3)write(6,*) "NG"
  n='xyz'
 endif
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
n='567'
call s3(k=i,j=j,i=k,n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(    j=j,i=k,n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(        i=k,n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(            n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(               )
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
n='567'
call s3(k=i,    i=k,n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(k=i,j=j,    n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(        i=k,n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
call s3(k=i,        n=n)
if (i/='1')write(6,*) "NG"
if (j/='2')write(6,*) "NG"
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
print *,'pass'
end

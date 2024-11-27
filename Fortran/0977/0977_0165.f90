module m1
contains
 subroutine s3(k,p,n)
 character,value::k
 character(*),optional::     p
 character(*),optional::     n
    if (k/='1')write(6,*) "NG"
  k='a'
 if (present(p)) then
    if (p/='89012')write(6,*) "NG"
    if (len(p)/=5)write(6,*) "NG"
  p='hjk'
 endif
 if (present(n)) then
    if (n/='567')write(6,*) "NG"
    if (len(n)/=3)write(6,*) "NG"
  n='xyz'
 endif
  end subroutine
end
use m1
 character::k,n*3,p*5
k='1'
n='567'
p='89012'
call s3(k=k,        n=n)
if (k/='1')write(6,*) "NG"
if (p/='89012')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
n='567'
p='89012'
call s3(k=k,p=p, n=n)
if (k/='1')write(6,*) "NG"
if (p/='hjk')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
print *,'pass'
end

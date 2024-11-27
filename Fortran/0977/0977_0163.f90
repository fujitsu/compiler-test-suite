module m1
contains
 subroutine s3(k,n)
 character,optional,value::k
 character(*),optional::     n
 if (present(k)) then
    if (k/='1')write(6,*) "NG"
  k='a'
 endif
 if (present(n)) then
    if (n/='567')write(6,*) "NG"
    if (len(n)/=3)write(6,*) "NG"
  n='xyz'
 endif
  end subroutine
end
use m1
 character::k,n*3
k='3'
n='567'
call s3(            n=n)
if (k/='3')write(6,*) "NG"
if (n/='xyz')write(6,*) "NG"
print *,'pass'
end

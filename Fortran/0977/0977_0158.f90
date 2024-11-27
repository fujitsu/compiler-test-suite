module m1
logical::t=.true.,f=.false.
contains
 subroutine s3(k,j,i)
 logical,value::i,j,k
if (.not.i)write(6,*) "NG"
if (.not.j)write(6,*) "NG"
if (.not.k)write(6,*) "NG"
  k=f
  i=f
  j=f
  end subroutine
end
use m1
 logical::i,j,k
i=t
j=t
k=t
call s3(i,j,k)
if (.not.i)write(6,*) "NG"
if (.not.j)write(6,*) "NG"
if (.not.k)write(6,*) "NG"
print *,'pass'
end

module m1
contains
subroutine s2(k)
integer::k(3,4)
associate(p=>k)
 write(1,*) ((p(k1,k2),k1=1,3),k2=1,4)
end associate
end subroutine
subroutine s1
integer::k(3,4),kk(3,4)
k=reshape([(n,n=1,12)],[3,4])
call s2(k)
rewind 1
read(1,*) kk
if (any(k/=kk)) print *,201
end subroutine
end
use m1
call s1
print *,'pass'
end



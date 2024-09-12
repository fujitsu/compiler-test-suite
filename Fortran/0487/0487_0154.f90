module m
integer,parameter::k=4
end
use m
real(k):: a(3,3)=2
complex(k):: b(3,3)=(3,4)
call s1( matmul(a,a)  )
call s2( matmul(b,b)  )
print *,'pass'
contains
subroutine s1(a)
real(k):: a(:,:)
if( any(abs( a-12) > 0.1)) print *,101
end
subroutine s2(a)
complex(k):: a(:,:)
if( any(abs( a-(-21,72)) > 0.1)) print *,101
end
end

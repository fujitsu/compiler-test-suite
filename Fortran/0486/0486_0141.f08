module m1
   real,parameter::a1=(1.5,1.5),a2(2)=[(1.5,1.5),(2.5,2.5)]
   complex,parameter::b1=(1.5,1.5),b2(2)=[(1.5,1.5),(2.5,2.5)]
   complex::xa1(6)=([a1,a2,a1+1,a2+1])
contains
subroutine s(k1,k2)
   real   ::k1,k2(:)
  write(1,*) [complex(8)::k1,k2,k1+1,k2+1]
  if (any(abs([complex(8)::k1,k2,k1+1,k2+1]-xa1)>0.001)) print *,101
  call ss1([complex(8)::k1,k2,k1+1,k2+1])
end subroutine
subroutine ss1(n)
complex(8)::n(:)
if (size(n)/=6) print *,201
if (any(n/=xa1)) print *,202
end subroutine
end
subroutine s1
use m1
complex k(6)
call s(a1,a2)
rewind 1
read(1,*) k
if (any(k/=xa1)) print *,301
end
call s1
print *,'pass'
end

module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
  complex :: y(4)
contains
subroutine s01(p)
class(*):: p
select type(p)
type is (complex)
  if (p%re/=1) print *,201
  p%re=2
  p%im=p%re+1
end select
end subroutine
end
use m1
complex:: c=(1,2)
call   s01(c)
if (c%re/=2) print *,301
if (c%im/=3) print *,302
associate( x=> c%re ,y=>c%im)
if (x/=2) print *,401
if (y/=3) print *,402
x=x+1
y=y+1
end associate
if (c%re/=3) print *,303
if (c%im/=4) print *,304
print *,'pass'
end

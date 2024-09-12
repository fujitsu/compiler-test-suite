module m1
  type xx
    integer::x1=1
  end type
  type x
    integer::x1=1
    integer::x2=1
    type(xx),pointer::x3=>null()
  end type
  type(x):: v1
  type(x):: v3=x(2,2)
  type(x),parameter:: v4=x(2,2,null())
end
module m2
use m1
end
subroutine s1
use m2
  type(x):: v2
if (v1%x1/=1)  print *,101
if (v1%x2/=1)  print *,102
if (v2%x1/=1)  print *,111
if (v2%x2/=1)  print *,112
if (v3%x1/=2)  print *,131
if (v3%x2/=2)  print *,132
if (v4%x1/=2)  print *,141
if (v4%x2/=2)  print *,142
end
call s1
print *,'pass'
end

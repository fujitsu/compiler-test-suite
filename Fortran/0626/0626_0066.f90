module m
 type::ty1
  sequence
  integer:: x
 end type
 procedure(type(ty1))::f1
 integer::n=0
end module
recursive function f1() result(res)
  use m,f2=>f1
  type(ty1)::res
  n=n+1
  res%x=n
  if (n>5)return
  res=f2()
end function
use m
type (ty1)::v
v=f1()
if (v%x/=6)print *,101,v
print *,'pass'
end

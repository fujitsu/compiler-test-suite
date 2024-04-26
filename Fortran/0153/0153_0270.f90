module m1
  type x1(k1,n1)
    integer,kind::n1=2
    integer,kind::k1=4
    integer(kind=k1):: a1(n1)
  end type
  type,extends(x1):: x2(k2,n2)
    integer,kind::n2=3
    integer,kind::k2=8
    integer(kind=k2):: a2(n2)
  end type
type(x2(2,10)),parameter:: c5=x2(2,10,8,3)(a1=[(k,k=1,10)],a2=[(k,k=1,3)])
end
use m1
print *,'pass'
end

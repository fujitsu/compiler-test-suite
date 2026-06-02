module m1
contains
pure function f(n) result(r)
  integer,intent(in)::n(:)
  integer::r
  r=n(1)
  if (size(n)/=1)r=99999
end function
end
use m1
kk=2
associate(k=>kk)
  block 
    integer::a(f([k]))
    integer::b(f([(m,m=k,2)]))
    integer::c(f([(m,m=2,k)]))
    integer::d(f([(m,m=k,k,k)]))
    integer::e(f([((max(m-1,mm),m=2,k),mm=k,2,k)]))
    if (size(a)/=2) print *,2020
    if (size(b)/=2) print *,2021
    if (size(c)/=2) print *,2022
    if (size(d)/=2) print *,2023
    if (size(e)/=2) print *,2023
    a(f([k]))=3
    b(f([(m,m=k,2)]))=3
    c(f([(m,m=2,k)]))=3
    d(f([(m,m=k,k,k)]))=3
    e(f([((max(m-1,mm),m=2,k),mm=k,2,k)]))=3
    if (a(2)/=3) print *,9021
    if (b(2)/=3) print *,9022
    if (c(2)/=3) print *,9023
    if (d(2)/=3) print *,9024
    if (e(2)/=3) print *,9025
  end block
end associate
print *,'sngg964q : pass'
end

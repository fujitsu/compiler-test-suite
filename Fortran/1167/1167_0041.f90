module m1
contains
pure function f(n) result(r)
  integer,intent(in)::n(:)
  integer::r
  r=n(1)
  if (size(n)/=1)r=99999
end function
pure function w(n) result(r)
  character(*),intent(in)::n
  integer::r
  r=-9999
  if (n=='a')r=2
end function
subroutine s1
character::kk='a'
associate(k=>kk)
  block 
    integer::a(f([w(k)]))
    integer::b(f([(m,m=w(k),2)]))
    integer::c(f([(m,m=2,w(k))]))
    integer::d(f([(m,m=w(k),w(k),w(k))]))
    integer::e(f([((max(m-1,mm),m=2,w(k)),mm=w(k),2,w(k))]))
    if (size(a)/=2) print *,2020
    if (size(b)/=2) print *,2021
    if (size(c)/=2) print *,2022
    if (size(d)/=2) print *,2023
    if (size(e)/=2) print *,2023
    a(f([w(k)]))=3
    b(f([(m,m=w(k),2)]))=3
    c(f([(m,m=2,w(k))]))=3
    d(f([(m,m=w(k),w(k),w(k))]))=3
    e(f([((max(m-1,mm),m=2,w(k)),mm=w(k),2,w(k))]))=3
    if (a(2)/=3) print *,9021
    if (b(2)/=3) print *,9022
    if (c(2)/=3) print *,9023
    if (d(2)/=3) print *,9024
    if (e(2)/=3) print *,9025
  end block
end associate
end
subroutine s2(kk)
character(:),allocatable::kk
associate(k=>kk)
  block 
    integer::a(f([w(k)]))
    integer::b(f([(m,m=w(k),2)]))
    integer::c(f([(m,m=2,w(k))]))
    integer::d(f([(m,m=w(k),w(k),w(k))]))
    integer::e(f([((max(m-1,mm),m=2,w(k)),mm=w(k),2,w(k))]))
    if (size(a)/=2) print *,2020
    if (size(b)/=2) print *,2021
    if (size(c)/=2) print *,2022
    if (size(d)/=2) print *,2023
    if (size(e)/=2) print *,2023
    a(f([w(k)]))=3
    b(f([(m,m=w(k),2)]))=3
    c(f([(m,m=2,w(k))]))=3
    d(f([(m,m=w(k),w(k),w(k))]))=3
    e(f([((max(m-1,mm),m=2,w(k)),mm=w(k),2,w(k))]))=3
    if (a(2)/=3) print *,9021
    if (b(2)/=3) print *,9022
    if (c(2)/=3) print *,9023
    if (d(2)/=3) print *,9024
    if (e(2)/=3) print *,9025
  end block
end associate
end
end
use m1
character(:),allocatable::kk
allocate(kk,source='a')
call s1
call s2(kk)
print *,'sngg965q : pass'
end

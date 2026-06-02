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
subroutine s2(kk)
character(:),allocatable::kk
associate(k=>kk)
  block 
    integer::a(f([w(k)]))
    if (size(a)/=2) print *,2020
    a(f([w(k)]))=3
    if (a(2)/=3) print *,9021
  end block
end associate
end
end
use m1
character(:),allocatable::kk
allocate(kk,source='a')
call s2(kk)
print *,'sngg966q : pass'
end

module m1
contains
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
    integer::a(len(k))
    if (size(a)/=2) print *,9021
    a(len(k))=3
    if (a(2)/=3) print *,9022
  end block
end associate
end subroutine
end
use m1
character(:),allocatable::kk
allocate(kk,source='aa')
call s2(kk)
print *,'sngg974q : pass'
end

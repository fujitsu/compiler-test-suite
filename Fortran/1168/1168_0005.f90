module m1
contains
subroutine s2(kk,kkk)
character(:),allocatable::kk
character(*),allocatable::kkk
associate(k=>kk)
  block 
    integer::a(len(k))
    if (size(a)/=2) print *,9021
  end block
end associate
associate(k=>kkk)
  block 
    integer::a(len(k))
    if (size(a)/=2) print *,9021
  end block
end associate
end subroutine
end
use m1
character(:),allocatable::kk
character(2),allocatable::kkk
allocate(kk,source='aa')
allocate(kkk,source='aa')
call s2(kk,kkk)
print *,'sngg138r : pass'
end

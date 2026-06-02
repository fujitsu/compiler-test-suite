module m1
contains
subroutine s1(kk)
character(*),allocatable::kk(:,:)
associate(k=>kk)
  block 
    character(len=len(k))::a(len(k),size(k,dim=2))
    if (size(a)/=6) print *,8021
    if (len (a)/=2) print *,8121
    a(len(k),size(k,dim=2))='1'
    if (a(2,3)/='1') print *,8022
  end block
end associate
end subroutine
subroutine s2(kk)
character(:),allocatable::kk(:,:)
associate(k=>kk)
  block 
    character(len=len(k))::a(len(k),size(k,dim=2))
    if (size(a)/=6) print *,9021
    if (len (a)/=2) print *,8221
    a(len(k),size(k,dim=2))='1'
    if (a(2,3)/='1') print *,9022
  end block
end associate
end subroutine
end
use m1
character(:),allocatable::kk(:,:)
character(2),allocatable::kx(:,:)
allocate(kk(2,3),source='aa')
allocate(kx(2,3),source='aa')
call s2(kk)
call s1(kx)
print *,'sngg975q : pass'
end

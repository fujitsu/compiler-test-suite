module m1
contains
subroutine s1(kk)
character(*),allocatable::kk(:)
associate(k=>kk)
  block 
    character(len=:),allocatable::a(:)
    allocate(character(len(k)):: a(size(k)))
    if (size(a)/=3) print *,9021
    if (len (a)/=2) print *,9022
    a(size(k))='1'
    if (a(3)/='1') print *,9022
  end block
end associate
end subroutine
subroutine s2(kk)
character(:),allocatable::kk(:)
associate(k=>kk)
  block 
    character(len=:),allocatable::a(:)
    allocate(character(len(k)):: a(size(k)))
    if (size(a)/=3) print *,9021
    if (len (a)/=2) print *,9022
    a(size(k))='1'
    if (a(3)/='1') print *,9022
  end block
end associate
end subroutine
end
use m1
character(:),allocatable::kk(:)
character(2),allocatable::kx(:)
allocate(kk(3),source='aa')
allocate(kx(3),source='aa')
call s2(kk)
call s1(kx)
print *,'sngg976q : pass'
end

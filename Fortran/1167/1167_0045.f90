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
  block 
    integer::a(w(kk))
    if (size(a)/=2) print *,9021
  end block
end subroutine
end
use m1
character(:),allocatable::kk
allocate(kk,source='a')
call s2(kk)
print *,'sngg969q : pass'
end

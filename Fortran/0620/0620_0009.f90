module m
contains
subroutine s1(n,e)
character(*),allocatable::e(:,:)
end subroutine
end
use m
character(2),allocatable::e(:,:)
call s1(2,e)
print *,'pass'
end

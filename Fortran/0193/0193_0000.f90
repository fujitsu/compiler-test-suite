MODULE m
  pointer(ptr,ia)
  integer :: ib
interface
 module subroutine sss
 end subroutine
end interface
end MODULE m

subMODULE(m)ptr
pointer(ptra,iaa)
pointer(ptr,ia)
  integer :: ibb
END subMODULE

use m
ptr=loc(ib)
ia=100
ptra=loc(ibb)
iaa=100
print *,'pass'
end

module m1
use iso_fortran_env
type  tt
   integer :: ii
type(LOCK_TYPE),allocatable :: cmp(:,:,:)[:,:]
end type

end module m1

module m2
use iso_fortran_env
use m1

type tt2
type(tt) :: obj
end type

end module 

module m3
use iso_fortran_env
use m2

type tt3
type(tt2) :: obj2
end type

end module 

use m3
use iso_fortran_env

type,extends(tt3) :: ty_1
type(LOCK_TYPE),allocatable :: cmp(:,:,:)[:,:]
end type

type(ty_1) :: obj
logical :: kk

End

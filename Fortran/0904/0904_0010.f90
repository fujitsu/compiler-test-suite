use iso_fortran_env
type  tt
   integer :: ii
type(LOCK_TYPE),allocatable :: cmp0(:,:,:)
end type

type :: ty_1
type(LOCK_type),allocatable :: kk[:]
type(tt) :: ii
end type

type(ty_1) :: obj

End

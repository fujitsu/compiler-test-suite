use iso_fortran_env
type coord
   real(8), allocatable :: xyz(:,:)
end type coord
type method_base
  integer::x1
      type(LOCK_TYPE) :: ndx
end type
     type,extends(method_base) :: method_grp
      type(LOCK_TYPE) :: ndx2
      type(coord), allocatable :: grp(:) !frameArray(:)
     end type method_grp
print *,'OK'
end


USE, INTRINSIC :: ISO_FORTRAN_ENV

type node
 type(node),allocatable::next
 type(node),allocatable::prev
 TYPE(LOCK_TYPE), allocatable :: result
end type

type(node) :: obj1[*]
end

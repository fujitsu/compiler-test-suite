print *,'pass'

contains
 subroutine csub1()
  use,intrinsic :: iso_c_binding
  character(len=2),target,allocatable :: cha1(:)
  character(len=2),pointer            :: cha2
  type(c_ptr) :: cptr

  cptr = c_loc(cha1)
  call c_f_pointer(cptr, cha2)

 end subroutine
end

call test01()
print *,"pass"
end

subroutine test01()
  use,intrinsic :: iso_c_binding
  character(len=2),target :: cha1
  common /c_loc/ iii
  type(c_ptr) :: cptr
  cptr = c_loc(cha1)
end

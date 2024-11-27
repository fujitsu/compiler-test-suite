end

subroutine sub01(p01)
  integer,intent(in) :: p01
  call sub02(p01)
end subroutine

subroutine sub02(p01)
  integer,intent(inout) :: p01
  p01 = p01
end subroutine

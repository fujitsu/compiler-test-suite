end
subroutine chk(p01)
  implicit none
  integer :: p01(:)
  NAMELIST /nam/ p01
  print *,p01
end

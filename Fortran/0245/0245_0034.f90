character ( len=4) :: ch(2) = "pass"
integer, parameter :: n=4
call sub(ch, n)
contains
subroutine sub(ch, m)
  character(len=m)  :: ch(:)
  contiguous ch
  print *, ch
end subroutine
end

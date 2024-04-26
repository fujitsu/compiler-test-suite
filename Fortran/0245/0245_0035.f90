character ( len=4),pointer,contiguous :: ptr(:)
character ( len=4),target :: ch(2) = "pass"
integer, parameter :: n=2

ptr =>ch
call sub(ptr, n)
contains
subroutine sub(ch, m)
  character(len=m),pointer  :: ch(:)
  contiguous ch
  print *, ch
end subroutine
end

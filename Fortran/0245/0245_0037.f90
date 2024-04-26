character ( len=4) :: ch(2,1) = "pass"
call sub(ch)
contains
subroutine sub(ch)
  character(len=4)  :: ch(:,:)
  contiguous ch
  print *, ch
end subroutine
end

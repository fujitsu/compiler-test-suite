
recursive subroutine sub(in)
  integer(kind=4),target :: s0=5
  integer(kind=4),pointer :: p1=>s0
  integer(kind=4) ::tmp

  tmp=p1+in
  
  print *, tmp
  if (tmp.lt.30) call sub(tmp)
end subroutine sub

subroutine top
  call sub(1)
end subroutine top

program main
  call top
end program main

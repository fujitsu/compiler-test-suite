
recursive subroutine sub(in)
  integer :: in
  procedure(sub),pointer :: p1=>sub
  procedure(ent),pointer :: p2=>ent

  print *, "start"
  if (in.eq.1) call p1(2)
  if (in.eq.2) call p2(3)

  entry ent(in)
  print *, "entry"
end subroutine sub

call sub(1)
end

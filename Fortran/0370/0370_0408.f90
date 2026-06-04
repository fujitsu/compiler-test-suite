
recursive subroutine sub(in)
  integer :: in
  type tp
     procedure(sub),pointer,nopass :: p1=>sub
     procedure(ent),pointer,nopass :: p2=>ent
  end type tp
  type(tp)::str

  print *, "start"
  if (in.eq.1) call str%p1(2)
  if (in.eq.2) call str%p2(3)

  entry ent(in)
  print *, "entry"
end subroutine sub

call sub(1)
end

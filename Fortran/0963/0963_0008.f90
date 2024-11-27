program main
  integer ::aa
  integer :: bb
  associate( pp=>aa+1, tt => pp)
      tt = 10
      print *, tt
  end associate
end

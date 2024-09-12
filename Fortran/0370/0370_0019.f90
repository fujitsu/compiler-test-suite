  type tp0
     real(kind=4),dimension(5) :: ra = 5.0
  end type tp0

  type tp1
     real(kind=4),dimension(3) :: ra = (/1.0,2.0,3.0/)
     real(kind=4),dimension(2) :: rb = (/3.0,4.0/)
  end type tp1

  type(tp0),target :: ta
  type(tp1),target :: tb
  class(*),pointer :: as_a

  print *, ta
  print *, tb

  as_a=>ta

  select type(as_a)
  type is (tp0)
     print *, "ok"
  type is (tp1)
     print *, "ng"
  end select

  as_a=>tb

  select type(as_a)
  type is (tp0)
     print *, "ng"
  type is (tp1)
     print *, "ok"
  end select

  print *, ta

  block
    class(tp0),pointer :: pa
    pa=>ta
    print *, pa%ra
  end block

  block
    class(tp1),allocatable :: ca_a    
    allocate (ca_a)
    print *, ca_a%ra
    print *, ca_a%rb
  end block

end

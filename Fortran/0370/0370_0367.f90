
program main
  interface
     integer(kind=4) function calc (in1, in2)
       integer(kind=4) :: in1, in2
     end function calc
  end interface
  procedure(calc),pointer :: p1 => calc
  procedure(calc),pointer :: p2 => NULL()
  procedure(calc),pointer :: p3
  procedure(calc),pointer :: p4 => NULL()
  procedure(calc),pointer :: p5

  p2=>calc
  p3=>calc

  print *, p1(1,1)
  print *, p2(1,3)
  print *, p3(1,5)

end program main

integer(kind=4) function calc (in1, in2)
  integer(kind=4) :: in1, in2

  calc = in1 + in2

  return
end function calc

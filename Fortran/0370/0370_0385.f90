
program main
  interface
     integer(kind=4) function calc (in1, in2)
       integer(kind=4) :: in1, in2
     end function calc
  end interface
  type tp
     procedure(calc),pointer,nopass :: p1 => calc
     procedure(calc),pointer,nopass :: p2 => NULL()
     procedure(calc),pointer,nopass :: p3
     procedure(calc),pointer,nopass :: p4 => NULL()
     procedure(calc),pointer,nopass :: p5
  end type tp
  type(tp):: str
  str%p2=>calc
  str%p3=>calc

  print *, str%p1(1,1)
  print *, str%p2(1,3)
  print *, str%p3(1,5)

end program main

integer(kind=4) function calc (in1, in2)
  integer(kind=4) :: in1, in2

  calc = in1 + in2

  return
end function calc

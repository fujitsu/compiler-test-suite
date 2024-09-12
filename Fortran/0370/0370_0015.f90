program main
  common /comt/ tt

  type, bind(c):: tp1
     integer(kind=4) :: ma
     integer(kind=4) :: mb
  end type tp1

  type(tp1) :: tt = tp1(5,6)

  print *, tt
end


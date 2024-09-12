  type tp1
     real(kind=4)  :: ma    = 3.0
     real(kind=8)  :: mb(3) = 4.0
     real(kind=16) :: mc(2) = [5.0,6.0]
     complex(kind=4)  :: ca    = (3.0,4.0)
     complex(kind=8)  :: cb(3) = (4.0,5.0)
     complex(kind=16) :: cc(2) = [(6.0,7.0),(8.0,9.0)]
  end type tp1 

  type, extends(tp1):: tp2
     real(kind=4) :: mm(2) = [1.0,2.0]
     real(kind=8) :: mn = 5.0
     real(kind=4) :: mo(4) = 6.0
     integer(kind=4) :: im(2) = [11,22]
     integer(kind=8) :: in = 55
     integer(kind=4) :: io(4) = 66
  end type tp2

  type(tp2) a(2)
  type(tp2) b
  type(tp2) c(2)

  print *, a(1)
  print *, a(2)
  print *, b
  print *, c(1)
  print *, c(2)

end

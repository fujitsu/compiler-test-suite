program test
  type tp0
     integer(kind=2) :: ta(2) = 0
     integer(kind=4) :: tb(2) = 0
     integer(kind=8) :: tc(2) = 3.0
  end type tp0

  type tp1
  end type tp1

  type tp2
     type(tp0) :: mta = tp0(5,6,7)
     type(tp0) :: mtb
     real(kind=4) :: mra
     real(kind=4) :: mrb = 4.0
  end type tp2

  type(tp1) ta
  type(tp2) tb

  print *, ta
  print *, tb

  block
    type qa0
       integer(kind=4) :: ia = 4
    end type qa0
    type(qa0) :: bma
    type(qa0) :: bmb = qa0(5)
    type(tp0) :: bmc

    print *, bma
    print *, bmb
    
    bmc%tb(2) = 7.0
    print *, bmc
  end block

  print *, tb

end program test

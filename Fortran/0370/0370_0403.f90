  structure /tp2/ 
    integer(kind=8) :: za0 = 50
  end structure
  structure /tp1/
    integer(kind=4) :: ma0 = 10
    integer(kind=4) :: ma1
    real(kind=8) :: mb0
    real(kind=8) :: mb1 = 2.0
  end structure

  record /tp1/ a
  record /tp2/ b

  a.ma1 = 0
  a.mb0 = 0
  print *, a
  print *, b
end


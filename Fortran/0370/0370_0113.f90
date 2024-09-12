  structure /tp1/
    integer(kind=4) :: ma0 = 10
    integer(kind=4) :: ma1
    real(kind=8) :: mb0
    real(kind=8) :: mb1 = 2.0
    structure xx
      integer(kind=8) :: za0 = 50
    end structure
    real(kind=8) :: mb2 = 3.0
  end structure

  record /tp1/ a
  print *, a

  a%mb0= 4.0
  a%mb2= 5.0
  print *, a
end


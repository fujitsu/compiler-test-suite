  structure /tp1/
    integer(kind=4) :: ma0 = 10
    integer(kind=4) :: ma1
    real(kind=8) :: mb0
    real(kind=8) :: mb1 = 2.0
    structure /tp2/ xx
      integer(kind=8) :: za0 = 50
      integer(kind=8) :: za1 = 100
    end structure
  end structure

  record /tp1/ a

  print *, a
  print *, a%xx%za1
end


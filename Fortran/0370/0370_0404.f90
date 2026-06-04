  structure /tp1/
    integer(kind=4)   :: ma0 = 10
    integer(kind=4)   :: ma1(3) = 20
    character(kind=1,len=4) :: mb0(2) = 'mnbv'
    character(kind=1,len=5) :: mb1 = 'MNBV'
  end structure

  record /tp1/ a,b(2)
  record /tp1/ c

  print *, a
  print *, b
  print *, c
end


integer,parameter :: pp1(2,3) = reshape((/((i,j=1,2 ),i=1,3)/),(/2,3/))
integer,parameter :: pp2(2,3) = reshape((/(i,i=1,6)/),(/2,3/))

  type tp0
     integer(kind=4) :: aa1(2,3) = pp1
     integer(kind=4) :: aa2(2,3) = pp2
  end type tp0

  type(tp0) a0
  print *, a0
end


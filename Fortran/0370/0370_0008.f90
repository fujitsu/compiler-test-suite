integer,parameter :: p1(6) = 3
integer,parameter :: p2(6) = (/1,1,1,2,2,2/)
integer,parameter :: p3(6) = (/(i,i=1,12, 2)/)
  type tp0
     integer(kind=4) :: aa(6) = p1
     integer(kind=4) :: bb(6) = p2
     integer(kind=4) :: cc(6) = p3
  end type tp0

  type(tp0) a0
  print *, a0%aa
  print *, a0%bb
  print *, a0%cc
end


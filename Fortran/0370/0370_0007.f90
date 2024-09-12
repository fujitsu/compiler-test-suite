integer,parameter :: pp1(20) = reshape((/((i,j=1,2 ),i=1,10)/),(/20/))
integer,parameter :: pp2(2,10) = reshape((/((i,j=1,2 ),i=1,10)/),(/2,10/))

  type tp0
     integer(kind=1) :: aa(5) = 3
     integer(kind=4) :: bb(5) = (/1,2,3,4,5/)
     integer(kind=4) :: cc(5) = (/(i,i=4,8)/)
     integer(kind=4) :: dd(10) = (/((i,j=1,2 ),i=1,5)/)
     integer(kind=4) :: ee(20) = pp1
     integer(kind=4) :: ff(2,10) = pp2
  end type tp0

  type(tp0) a0
  print *, a0%aa
  print *, a0%bb
  print *, a0%cc
  print *, a0%dd
  print *, a0%ee
  print *, a0%ff
end


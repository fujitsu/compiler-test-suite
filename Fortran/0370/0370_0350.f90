
  type tp0
     integer(kind=8) :: m1
     integer(kind=1) :: m2 = 2
     real(kind=8)    :: m3
     complex(kind=4) :: m4
  end type tp0
  type(tp0),pointer:: p1
  type(tp0),target :: t1
  type(tp0),pointer:: p2
  data p1/t1/
  
  p2=>t1
  p1%m1 = 1
  t1%m3 = 3.0_8
  p1%m4%im = 5.0_4
  t1%m4%re = 4.0_4

  if(t1%m1.ne.p1%m1) print *,"ng"
  if(t1%m2.ne.p1%m2) print *,"ng"
  if(t1%m3.ne.p1%m3) print *,"ng"
  if(t1%m4.ne.p1%m4) print *,"ng"
  if(p1%m1.ne.p2%m1) print *,"ng"
  if(p1%m2.ne.p2%m2) print *,"ng"
  if(p1%m3.ne.p2%m3) print *,"ng"
  if(p1%m4.ne.p2%m4) print *,"ng"
  
  print *, p1
end program

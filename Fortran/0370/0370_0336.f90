
  type tp0
     integer(kind=4) :: t0
     integer(kind=4),dimension(3) :: a0
  end type tp0

  type tp1
     real(kind=8),dimension(5) :: a0
     real(kind=8) :: r0
  end type tp1

  type(tp0),target :: str0
  type(tp1),target :: str1
  type(tp0),pointer :: p0
  type(tp1),pointer :: p1

  data (str0%a0(i),i=1,3) /3*100/
  data (str1%a0(i),i=1,5) /5*200.0/
  data p0,p1 /str0,str1/
  
  str0%t0 = 2
  str1%r0 = 3.0
  
  print *, p0
  print *, p1
end program

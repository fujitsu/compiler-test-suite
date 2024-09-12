program main

  integer,parameter :: N=100
  logical,dimension(1:N) :: tf1,tf2
  integer,dimension(1:N) :: int1
  integer,dimension(1:N) :: real1
  integer,parameter :: IANS=1

  tf1 = (/(mod(i,5)==0,i=1,N)/)

  real1 = 0
  where (tf1)
    tf2 = tf1
  elsewhere
    tf2 = tf1
  endwhere

  where (tf1)
    int1 = 1
  elsewhere
    int1 = 0
  endwhere

  where (tf2)
    int1  = int1*int1
    real1 = 0
  endwhere

  where (tf2)
    real1 = real1 + real(int1)
  endwhere

  ires = int(maxval(real1))

  if (ires == IANS) then
     print *,'OK'
  else
     print *,'NG'
  endif

end program

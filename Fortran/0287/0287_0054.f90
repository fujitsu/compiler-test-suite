  program main
  integer,dimension (10) :: a,b
  integer,dimension (2,10) :: tmp
  equivalence( tmp, a )
  tmp(:,:) = 0
  a=1
  b=2
  print *, tmp(1,:)
  print *, tmp(2,:)
  end

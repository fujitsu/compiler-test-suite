
  integer(kind=4),target :: t0 = 100
  integer(kind=4),target,dimension(5) :: a1 = (/1,2,3,4,5/)
  integer(kind=4),target,dimension(3,2) :: m1 = reshape((/10,20,30,40,50,60/), (/3,2/))
  integer(kind=4),pointer :: pt0
  integer(kind=4),pointer :: pt1
  integer(kind=4),pointer :: pt2
  integer(kind=4),pointer,dimension(:) :: pa1
  integer(kind=4),pointer,dimension(:,:) :: pm1
  integer(kind=4),pointer,dimension(:,:) :: pm2

  data pt0 /NULL()/
  data pt1 /t0/
  data pt2 /a1(3)/ 
  data pa1 /a1/    
  data pm1 /m1/
  data pm2 /m1(2:3,1:2)/

  print *, pt1
  print *, pt2
  print *, pa1
  print *, pm1
  print *, pm2

end program

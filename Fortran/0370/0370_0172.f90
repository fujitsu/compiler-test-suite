
  integer(kind=4),target :: t1(5,2) = reshape((/1,2,3,4,5,6,7,8,9,10/), (/5,2/))
  integer(kind=4),pointer,dimension(:,:) :: p1  => t1
  integer(kind=4),pointer                :: p2  => t1(4,2)
  integer(kind=4),pointer,dimension(:)   :: ps1 => t1(1:5,2)
  integer(kind=4),pointer,dimension(:,:) :: pm1 => t1(1:5,1:2)
  integer(kind=4),pointer,dimension(:,:) :: pm2 => t1(2:5,1:2)
  integer(kind=4),pointer,dimension(:,:) :: pm3 => t1(1:2,2:2)
  integer(kind=4),pointer,dimension(:,:) :: pt1 => t1(1:5:2,1:2)
  integer(kind=4),pointer,dimension(:,:) :: pt2 => t1(2:5:2,1:2)

  print *, p1
  print *, p2

  print *, ps1

  print *, pm1
  print *, pm2
  print *, pm3

  print *, pt1
  print *, pt2
end program

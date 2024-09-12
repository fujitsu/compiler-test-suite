  integer(kind=4),target :: t0(5) = (/11,12,13,14,15/)
  integer(kind=4),target :: t1(4:8) = (/11,12,13,14,15/)
  integer(kind=4),target :: t2(-1:3) = (/11,12,13,14,15/)
  integer(kind=4),target :: tm0(0:4,10:11) = reshape((/1,2,3,4,5,6,7,8,9,10/), (/5,2/))  
  integer(kind=4),pointer,dimension(:) :: pa0 => t0
  integer(kind=4),pointer,dimension(:) :: pa1 => t1
  integer(kind=4),pointer,dimension(:) :: pa2 => t2
  integer(kind=4),pointer              :: ps0 => t2(-1)
  integer(kind=4),pointer              :: ps1 => t2(3)
  integer(kind=4),pointer              :: ps2 => tm0(4,11)
  integer(kind=4),pointer,dimension(:,:) :: pm0 => tm0

  print *, pa0
  print *, pa1
  print *, pa2
  print *, ps0,ps1
  print *, ps2  
  print *, pm0
end program

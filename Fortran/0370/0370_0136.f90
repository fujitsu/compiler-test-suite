  integer(kind=4),target :: t1(5) = (/1,2,3,4,5/)
  integer(kind=4),pointer              :: ps1 => t1(3)
  integer(kind=4),pointer              :: ps2 => t1(5)
  integer(kind=4),pointer,dimension(:) :: pa1 => t1
  integer(kind=4),pointer,dimension(:) :: pa2 => t1(1:5)
  integer(kind=4),pointer,dimension(:) :: pa3 => t1(2:4)
  integer(kind=4),pointer,dimension(:) :: pa4 => t1(2:5:2)
  
  print *, ps1
  print *, ps2
  print *, pa1
  print *, pa2
  print *, pa3
  print *, pa4
end program

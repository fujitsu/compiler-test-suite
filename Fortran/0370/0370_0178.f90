  
module mod
  real(kind=4),target :: s1 = 1.0
  real(kind=4),target,dimension(5) :: a1 = (/9.0,8.0,7.0,6.0,5.0/)
  real(kind=4),target,dimension(5,2) :: m1 = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/),(/5,2/))

  real(kind=4),pointer :: ps1 => s1

  real(kind=4),pointer :: pa1(:) => a1
  real(kind=4),pointer :: pa2    => a1(3)
  real(kind=4),pointer :: pa3(:) => a1(4:5)
  real(kind=4),pointer :: pa4(:) => a1(2:4:2)

  real(kind=4),pointer :: pm1(:,:) => m1
  real(kind=4),pointer :: pm2      => m1(3,2)
  real(kind=4),pointer :: pm3(:,:) => m1(3:5,1:2)
  real(kind=4),pointer :: pm4(:)   => m1(2:3,2)
  real(kind=4),pointer :: pm5(:)   => m1(4,1:2)
  real(kind=4),pointer :: pm6(:,:) => m1(2:4:2,1:2)
  real(kind=4),pointer :: pm7(:)   => m1(1:5:2,2)
end module mod

program main
  use mod
  
  print *, s1
  print *, a1
  print *, m1
  print *, "------------"
  print *, ps1
  print *, "------------"
  print *, pa1
  print *, pa2
  print *, pa3
  print *, pa4
  print *, "------------"
  print *, pm1
  print *, pm2
  print *, pm3
  print *, pm4
  print *, pm5
  print *, pm6
  print *, pm7
end program main
 

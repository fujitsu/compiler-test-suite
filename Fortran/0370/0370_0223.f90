subroutine sub
  real(kind=4),target :: s1 = 1.0
  real(kind=4),target,dimension(5) :: a1 = (/9.0,8.0,7.0,6.0,5.0/)
  real(kind=4),target,dimension(5,2) :: m1 = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/),(/5,2/))

  type ty0
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
  end type ty0
  type ty1
     integer(kind=4) :: t0 = 0
     type(ty0)       :: stra
     integer(kind=4) :: t1 = 1
     type(ty0)       :: strb
  endtype ty1
  type(ty1),save,target :: str1

  print *, str1%t0
  print *, str1%t1

  print *, "------------"
  print *, str1%stra%ps1
  print *, "------------"
  print *, str1%stra%pa1
  print *, str1%stra%pa2
  print *, str1%stra%pa3
  print *, str1%stra%pa4
  print *, "------------"
  print *, str1%stra%pm1
  print *, str1%stra%pm2
  print *, str1%stra%pm3
  print *, str1%stra%pm4
  print *, str1%stra%pm5
  print *, str1%stra%pm6
  print *, str1%stra%pm7

  print *, "------------"
  print *, str1%strb%ps1
  print *, "------------"
  print *, str1%strb%pa1
  print *, str1%strb%pa2
  print *, str1%strb%pa3
  print *, str1%strb%pa4
  print *, "------------"
  print *, str1%strb%pm1
  print *, str1%strb%pm2
  print *, str1%strb%pm3
  print *, str1%strb%pm4
  print *, str1%strb%pm5
  print *, str1%strb%pm6
  print *, str1%strb%pm7
end subroutine sub

call sub
end

subroutine sub(xxx,yyy)
  real(kind=8)    :: xxx(8,3)
  real(kind=8)    :: yyy(8,100)
  integer(kind=8) :: i,j
  do j=1,100
     do i=1,8
        xxx(i,1) = xxx(i,1) + yyy(i,j)
        xxx(i,2) = xxx(i,2) + yyy(i,j)
        xxx(i,3) = xxx(i,3) + yyy(i,j)
     end do
  end do
end subroutine sub

program main
  real(kind=8)    :: xxx(8,3)
  real(kind=8)    :: yyy(8,100)
  integer(kind=8) :: i,j
  do i=1,8
     xxx(i,1) = i*1.0
     xxx(i,2) = i*1.1
     xxx(i,3) = i*1.2
  end do

  do j=1,100
     do i=1,8
        yyy(i,j) = i*1.0
     end do
  end do
  call sub(xxx, yyy)
  print *,xxx(1,1)
end program main

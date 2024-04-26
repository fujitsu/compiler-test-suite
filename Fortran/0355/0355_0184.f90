subroutine sub(xxx,yyy, flag1, flag2)
  real(kind=8)    :: xxx(8,3)
  real(kind=8)    :: yyy(8,100)
  integer(kind=8) :: i,j
  integer(kind=8) :: flag1(100),flag2(100)

  do j=1,100
     do i=1,8
        if (flag1(j) .gt. 0) then
           xxx(i,1) = xxx(i,1) + yyy(i,j)
        end if
        if (flag2(j) .gt. 0) then
           xxx(i,2) = xxx(i,2) + yyy(i,j)
        end if
        xxx(i,3) = xxx(i,3) + yyy(i,j)
     end do
  end do
end subroutine sub

program main
  real(kind=8)    :: xxx(8,3)
  real(kind=8)    :: yyy(8,100)
  integer(kind=8) :: i,j
  integer(kind=8) :: flag1(100),flag2(100)

  do i=1,8
     xxx(i,1) = i*1.0
     xxx(i,2) = i*1.1
     xxx(i,3) = i*1.2
  end do

  do j=1,100
     do i=1,8
        yyy(i,j) = i*1.0
     end do
     flag1(j) = j
     flag2(j) = j
  end do
  call sub(xxx, yyy, flag1, flag2)
  print *,xxx(1,1)
end program main

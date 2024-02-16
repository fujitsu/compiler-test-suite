integer :: i
complex::j(2)
j(2)=(3.45,6.56)
  do i=1, j(2)%re
    if((i.le.0).or.(i.ge.6)) print*, "101"
  end do
  PRINT*,"PASS"
end




subroutine sub1(xxx, ans)
  real(kind=4) :: xxx
  real(kind=4),dimension(24) :: ans
  ans(1) = xxx ** 0.25
  ans(2) = xxx ** 1.25
  ans(3) = xxx ** 2.25
  ans(4) = xxx ** 3.25
  ans(5) = xxx ** 4.25
  ans(6) = xxx ** 5.25
  ans(7) = xxx ** 6.25
  ans(8) = xxx ** 7.25
  ans(9) = xxx ** 8.25
  ans(10) = xxx ** 9.25
  ans(11) = xxx ** 10.25
  ans(12) = xxx ** (-0.25)
  ans(13) = xxx ** (-1.25)
  ans(14) = xxx ** (-2.25)
  ans(15) = xxx ** (-3.25)
  ans(16) = xxx ** (-4.25)
  ans(17) = xxx ** (-5.25)
  ans(18) = xxx ** (-6.25)
  ans(19) = xxx ** (-7.25)
  ans(20) = xxx ** (-8.25)
  ans(21) = xxx ** (-9.25)
  ans(22) = xxx ** (-10.25)
  ans(23) = xxx ** 199.25
  ans(24) = xxx ** (-199.25)
end subroutine sub1


subroutine sub2(xxx, res)
  real(kind=4) :: xxx
  real(kind=4),dimension(24) :: res
  res(1) = xxx ** 0.25
  res(2) = xxx ** 1.25
  res(3) = xxx ** 2.25
  res(4) = xxx ** 3.25
  res(5) = xxx ** 4.25
  res(6) = xxx ** 5.25
  res(7) = xxx ** 6.25
  res(8) = xxx ** 7.25
  res(9) = xxx ** 8.25
  res(10) = xxx ** 9.25
  res(11) = xxx ** 10.25
  res(12) = xxx ** (-0.25)
  res(13) = xxx ** (-1.25)
  res(14) = xxx ** (-2.25)
  res(15) = xxx ** (-3.25)
  res(16) = xxx ** (-4.25)
  res(17) = xxx ** (-5.25)
  res(18) = xxx ** (-6.25)
  res(19) = xxx ** (-7.25)
  res(20) = xxx ** (-8.25)
  res(21) = xxx ** (-9.25)
  res(22) = xxx ** (-10.25)
  res(23) = xxx ** 199.25
  res(24) = xxx ** (-199.25)
end subroutine sub2

program main
  real(kind=4) :: xxx
  real(kind=4),dimension(24) :: ans, res
  integer(8) :: i
  xxx = 2

  call sub1(xxx, ans)
  call sub2(xxx, res)

  do i=1,24
     if (abs(1-(ans(i)/res(i))) .gt. 0.00001) then
        print *,"NG :",i,ans(i),res(i)
     end if
  end do
  print *,"OK"
end program main

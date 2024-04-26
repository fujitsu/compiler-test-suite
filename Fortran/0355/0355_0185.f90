


subroutine sub1(xxx, ans)
  real(kind=4) :: xxx
  real(kind=4),dimension(2) :: ans
  ans(1) = xxx ** 200.25
  ans(2) = xxx ** (-200.25)
end subroutine sub1


subroutine sub2(xxx, res)
  real(kind=4) :: xxx
  real(kind=4),dimension(2) :: res
  res(1) = xxx ** 200.25
  res(2) = xxx ** (-200.25)
end subroutine sub2

program main
  real(kind=4) :: xxx
  real(kind=4),dimension(2) :: ans, res
  integer(8) :: i
  xxx = 2

  call sub1(xxx, ans)
  call sub2(xxx, res)

  do i=1,2
     if (abs(1-(ans(i)/res(i))) .gt. 0.00001) then
        print *,"NG :",i,ans(i),res(i)
     end if
  end do
  print *,"OK"
end program main

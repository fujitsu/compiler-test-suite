program main
  implicit none
  integer ::  i
  real(kind=8) :: r8002
  real(kind=8), dimension(10,10) :: r8004/100*1/
  do i=1,1
     r8002=sum(r8004(i,1:5))
  end do
  if (r8002 .eq. 5) then
     print *,"OK"
  else
     print *,"NG",r8002
  end if
end program main

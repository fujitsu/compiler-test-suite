program main
  integer*8 x1(10),x2(10),x3(10)
  data x1/10*1/
  data x2/10*1/
  data x3/10*1/
  call sub(x1,x2,x3,10_8)
end program main

subroutine sub(x1,x2,x3,n)
  integer*8 xxx(10),i,j,n
  integer*8 x1(10),x2(10),x3(10)

  do j=1,n
     do i=1,8
        xxx(i) = x1(i)+x2(i)+x3(i)
        call sub2()
     end do
  end do
  if (xxx(1) .eq. 3) then
     print *,"OK"
  else
     print *,"NG",xxx(1)
  end if
contains
  subroutine sub2()
  end subroutine sub2
end subroutine sub

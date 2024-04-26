program main
  integer*8 x1(10),x2(10),x3(10),x4(10),x5(10),x6(10),x7(10),x8(10),x9(10),x10(10)
  data x1/10*1/
  data x2/10*1/
  data x3/10*1/
  data x4/10*1/
  data x5/10*1/
  data x6/10*1/
  data x7/10*1/
  data x8/10*1/
  data x9/10*1/
  data x10/10*1/
  call sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,10_8)
end program main

subroutine sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,n)
  integer*8 xxx(10),i,n
  integer*8 x1(10),x2(10),x3(10),x4(10),x5(10),x6(10),x7(10),x8(10),x9(10),x10(10)
  data xxx/10*1/

  do i=2,n
     xxx(1) = x1(i)+x2(i)+x3(i)+x4(i)+x5(i)+x6(i)+x7(i)+x8(i)+x9(i)+x10(i)
     call sub2()
  end do
  if (xxx(1) .eq. 10) then
     print *,"OK"
  else
     print *,"NG",xxx(1)
  end if
contains
  subroutine sub2()
  end subroutine sub2
end subroutine sub

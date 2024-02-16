  complex*16 res(10),ab(10),cd(10)
  real*8 huge/1.797693134862316D+308/
  real*8 nftiny/2.225073858507201D-308/
  real*8 tiny/-4.940656458412465D-324/
  data res/10*0/,ab/10*1/,cd/10*1/

!  (a + i b)/(c + i d)
!  abs(a*c)>HUGE
  ab(1) = dcmplx(huge, 0.0)
  cd(1) = dcmplx(1.1,  0.0)

!  abs(b*d)>HUGE
  ab(2) = dcmplx(0.0,huge)
  cd(2) = dcmplx(0.0,1.1)

!  abs(a*c+b*d)>HUGE
  ab(3) = dcmplx(huge,2.0)
  cd(3) = dcmplx(1.0, 2.0)

!  abs(c*b)>HUGE
  ab(4) = dcmplx(0.0,huge)
  cd(4) = dcmplx(1.1, 0.0)

!  abs(a*d)>HUGE
  ab(5) = dcmplx(huge,0.0)
  cd(5) = dcmplx(0.0, 1.1)

!  abs(c*b-a*d)>HUGE
  ab(6) = dcmplx(2.0,huge)
  cd(6) = dcmplx(1.0, 2.0)

!  c*c+d*d>HUGE
  ab(7) = dcmplx(1.0, 1.0)
  cd(7) = dcmplx(2.0, huge/2)


  ab(8) = dcmplx(tiny, tiny)
  cd(8) = dcmplx(tiny, tiny)

  ab(9) = dcmplx(nftiny, nftiny)
  cd(9) = dcmplx(nftiny, nftiny)

  ab(10) = dcmplx(huge, 2.0)
  cd(10) = dcmplx(huge, 2.0)


  do i=1,10
     res(i) = ab(i) / cd(i)
  enddo
  write(6,*) res(1)
  write(6,*) res(2)
  write(6,*) res(3)
  write(6,*) res(4)
  write(6,*) res(5)
  write(6,*) res(6)
  write(6,*) res(7)
  write(6,*) res(8)
  write(6,*) res(9)
  write(6,*) res(10)

end program

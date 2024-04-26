  complex*8 res(10),ab(10),cd(10)
  real huge/3.40282347E+38/

  real tiny/1.17549435E-38/
  data res/10*0/,ab/10*1/,cd/10*1/

  ab(1) = cmplx(huge, 0.0)
  cd(1) = cmplx(1.1,  0.0)

  ab(2) = cmplx(0.0,huge)
  cd(2) = cmplx(0.0,1.1)

  ab(3) = cmplx(huge,2.0)
  cd(3) = cmplx(1.0, 2.0)

  ab(4) = cmplx(0.0,huge)
  cd(4) = cmplx(1.1, 0.0)

  ab(5) = cmplx(huge,0.0)
  cd(5) = cmplx(0.0, 1.1)

  ab(6) = cmplx(2.0,huge)
  cd(6) = cmplx(1.0, 2.0)

  ab(7) = cmplx(1.0, 1.0)
  cd(7) = cmplx(2.0, huge/2)


  ab(8) = cmplx(tiny, tiny)
  cd(8) = cmplx(tiny, tiny)

  ab(9) = cmplx(tiny, huge)
  cd(9) = cmplx(tiny, huge)


  ab(10) = cmplx(huge, 2.0)
  cd(10) = cmplx(huge, 2.0)


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

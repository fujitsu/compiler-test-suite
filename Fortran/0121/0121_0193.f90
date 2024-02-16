  complex*8 res(16),ab(16),cd(16)
  data res/16*0/,ab/16*1/,cd/16*1/


!  (a + i b)/(c + i d)
  ab(1) = cmplx(4.0E-22, 1e-35)
  cd(1) = cmplx(2.0E-030, 1e-34)

  ab(2) = cmplx(4.0E-22, 1e-35)
  cd(2) = cmplx(5.0E16  , 1e-34)

  ab(3) = cmplx(4.0E-22, 1e-35)
  cd(3) = cmplx(1.1     , 1e-34)

  ab(4) = cmplx(1e-35, 4.0E-22)
  cd(4) = cmplx(1e-34, 2.0E-030)

  ab(5) = cmplx(1e-35, 4.0E-22)
  cd(5) = cmplx(1e-34, 5.0E16)

  ab(6) = cmplx(1e-35, 4.0E-22)
  cd(6) = cmplx(1e-34, 1.1)



  ab(7) = cmplx(5.0E-22, 1e-35)
  cd(7) = cmplx(2.0E-030, 1e-34)

  ab(8) = cmplx(2.0E-22, 1e-35)
  cd(8) = cmplx(1.0E-030, 1e-34)

  ab(9) = cmplx(1e-35, 2.0E-22)
  cd(9) = cmplx(1e-34,   7.5E16)


  ab(10) = cmplx(3.40282347E+38, 1.0)
  cd(10) = cmplx(3.40282347E+38, 1.0)

  ab(11) = cmplx(0.0,1.19999999999999996e+00)
  cd(11) = cmplx(0.0,1.19999999999999996e+00)

  do i=1,11
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
  write(6,*) res(11)

end program

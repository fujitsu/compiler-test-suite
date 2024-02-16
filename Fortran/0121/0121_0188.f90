  complex*16 res(16),ab(16),cd(16)
  data res/16*0/,ab/16*1/,cd/16*1/


!  (a + i b)/(c + i d)
  ab(1) = dcmplx(2.0E-274_16, 1e-300_16)
  cd(1) = dcmplx(2.0E-065_16, 1e-100_16)

  ab(2) = dcmplx(2.0E-274_16, 1e-300_16)
  cd(2) = dcmplx(2.0E34_16, 1e-100_16)

  ab(3) = dcmplx(2.0E-274_16, 1e-300_16)
  cd(3) = dcmplx(1.1_16, 1e-100_16)

  ab(4) = dcmplx(1e-300_16, 2.0E-274_16)
  cd(4) = dcmplx(1e-100_16, 2.0E-065_16)

  ab(5) = dcmplx(1e-300_16, 2.0E-274_16)
  cd(5) = dcmplx(1e-100_16, 2.0E34_16)

  ab(6) = dcmplx(1e-300_16, 2.0E-274_16)
  cd(6) = dcmplx(1e-100_16, 1.1_16)


  ab(7) = dcmplx(3.0E-274_16, 1e-300_16)
  cd(7) = dcmplx(2.0E-065_16, 1e-100_16)

  ab(8) = dcmplx(3.0E-274_16, 1e-300_16)
  cd(8) = dcmplx(1.0E-065_16, 1e-100_16)

  ab(9) = dcmplx(1e-300_16, 2.0E-274_16)
  cd(9) = dcmplx(1e-100_16,   2.1E34_16)


  ab(10) = dcmplx(1.797693134862316D+308, 1.0_16)
  cd(10) = dcmplx(1.797693134862316D+308, 1.0_16)

  ab(11) = dcmplx(0.0_16,1.19999999999999996e+00_16)
  cd(11) = dcmplx(0.0_16,1.19999999999999996e+00_16)

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

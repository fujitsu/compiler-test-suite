  complex*16 res(16),ab(16),cd(16)
  data res/16*0/,ab/16*1/,cd/16*1/


!  (a + i b)/(c + i d)
  ab(1) = dcmplx(1.0, 1.0)
  cd(1) = dcmplx(1.0, 1.0)

  ab(2) = dcmplx(1.1, 1.2)
  cd(2) = dcmplx(1.3, 1.4)

  ab(3) = dcmplx(1.4, 1.3)
  cd(3) = dcmplx(1.2, 1.2)

  ab(4) = dcmplx(12345.6789,56789.1234)
  cd(4) = dcmplx(98765.4321,4321.98765)

  ab(5) = dcmplx(56789.1234,12345.6789)
  cd(5) = dcmplx(4321.98765,98765.4321)

  ab(6) = dcmplx(1.1e20,1.2e20)
  cd(6) = dcmplx(1.3e20,1.4e20)

  ab(7) = dcmplx(1.4e20,1.3e20)
  cd(7) = dcmplx(1.2e20,1.1e20)



  ab(8) = dcmplx(0.0, 1.2)
  cd(8) = dcmplx(1.3, 1.4)

  ab(9) = dcmplx(1.1, 0.0)
  cd(9) = dcmplx(1.3, 1.4)

  ab(10) = dcmplx(1.1, 1.2)
  cd(10) = dcmplx(0.0, 1.4)

  ab(11) = dcmplx(1.1, 1.2)
  cd(11) = dcmplx(1.3, 0.0)

  ab(12) = dcmplx(0.0, 0.0)
  cd(12) = dcmplx(1.3, 1.4)


  do i=1,12
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
  write(6,*) res(12)

end program

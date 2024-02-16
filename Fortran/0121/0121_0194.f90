  complex*8 res(16),ab(16),cd(16)
  data res/16*0/,ab/16*1/,cd/16*1/


!  (a + i b)/(c + i d)
  ab(1) = cmplx(3.40282347E+38, 1.0)
  cd(1) = cmplx(1.0, 1.0)

  ab(2) = cmplx(1.0, 3.40282347E+38)
  cd(2) = cmplx(1.0, 1.0)

  ab(3) = cmplx(1.0, 1.0)
  cd(3) = cmplx(3.40282347E+38  , 1.0)

  ab(4) = cmplx(1.0, 1.0)
  cd(4) = cmplx(1.0, 3.40282347E+38)

  ab(5) = cmplx(3.40282347E+38, 56789.1234)
  cd(5) = cmplx(98765.4321,4321.98765)

  ab(6) = cmplx(12345.6789, 3.40282347E+38)
  cd(6) = cmplx(98765.4321,4321.98765)

  ab(7) = cmplx(12345.6789,56789.1234)
  cd(7) = cmplx(3.40282347E+38  , 4321.98765)

  ab(8) = cmplx(12345.6789,56789.1234)
  cd(8) = cmplx(98765.4321, 3.40282347E+38)

  ab(9) = cmplx(3.40282347E+38, 3.40282347E+38)
  cd(9) = cmplx(98765.4321,4321.98765)

  ab(10) = cmplx(12345.6789,56789.1234)
  cd(10) = cmplx(3.40282347E+38, 3.40282347E+38)

  ab(11) = cmplx(3.40282347E+38, 3.40282347E+38)
  cd(11) = cmplx(3.40282347E+38, 3.40282347E+38)

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

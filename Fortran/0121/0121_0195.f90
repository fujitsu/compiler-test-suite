#define EQUAL_CHECK(a, b) (((abs(real(a) - real(b))) .gt. 1.0D-6) .or. ((abs(imag(a) - imag(b))) .gt. 1.0D-6))
  complex*8 res(16),ab(16),cd(16),master(16)
  data res/16*0/,ab/16*1/,cd/16*1/,master/16*0/
  master(1)=(.5,.5)
  master(2)=(.5,-.5)
  master(3)=(1.,-1.)
  master(4)=(1.,1.)
  master(5)=(2.511354E-02,.5738909)
  master(6)=(.12476109,-5.459561E-03)
  master(7)=(13.139585,-2.8564815)
  master(8)=(.125,.5749899)
  master(9)=(1.23E-43,1.13E-43)
  master(10)=(1.0_4/0.0_4,1.0_4/0.0_4)
  master(11)=(1.,0.)

  ab(1) = cmplx(1.17549435E-38, 1.0)
  cd(1) = cmplx(1.0, 1.0)

  ab(2) = cmplx(1.0, 1.17549435E-38)
  cd(2) = cmplx(1.0, 1.0)

  ab(3) = cmplx(1.0, 1.0)
  cd(3) = cmplx(1.17549435E-38  , 1.0)

  ab(4) = cmplx(1.0, 1.0)
  cd(4) = cmplx(1.0, 1.17549435E-38)

  ab(5) = cmplx(1.17549435E-38, 56789.1234)
  cd(5) = cmplx(98765.4321,4321.98765)

  ab(6) = cmplx(12345.6789, 1.17549435E-38)
  cd(6) = cmplx(98765.4321,4321.98765)

  ab(7) = cmplx(12345.6789,56789.1234)
  cd(7) = cmplx(1.17549435E-38  , 4321.98765)

  ab(8) = cmplx(12345.6789,56789.1234)
  cd(8) = cmplx(98765.4321, 1.17549435E-38)

  ab(9) = cmplx(1.17549435E-38, 1.17549435E-38)
  cd(9) = cmplx(98765.4321,4321.98765)

  ab(10) = cmplx(12345.6789,56789.1234)
  cd(10) = cmplx(1.17549435E-38, 1.17549435E-38)

  ab(11) = cmplx(1.17549435E-38, 1.17549435E-38)
  cd(11) = cmplx(1.17549435E-38, 1.17549435E-38)

  do i=1,11
     res(i) = ab(i) / cd(i)
  enddo

  do i=1,11
    if (EQUAL_CHECK(res(i),master(i)))then
      print*,"NG",i,res(i),master(i)
    endif
  enddo
  print *,"pass"
end program

  complex*16 res(10),ab(10),cd(10)
  real*8 huge/3.40282347E+38/
  real*8 nftiny/-1.40129846E-45/
  real*8 tiny/1.17549435E-38/
  data res/10*0/,ab/10*1/,cd/10*1/

!  (a + i b)/(c + i d)
!  abs(a*c)>HUGE
  ab(1) = dcmplx(1d-160,2d-160)
  cd(1) = dcmplx(1d-153,2d-153)
  ab(2) = dcmplx(2.0,3.0)
  cd(2) = dcmplx(4.0,5.0)

  do i=1,8
     res(i) = ab(i) / cd(i)
  enddo
  write(6,*) res(1)
  write(6,*) res(2)
  end

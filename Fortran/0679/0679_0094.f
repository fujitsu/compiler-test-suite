      program main
      real b(10,10,10)/1000*2./
      real*8 d(10,10)/100*9./,ds
      complex*8 c(10,10,5)/500*3./,cs
      data  n/2/,m1,m2/0,0/
      do 10 i1=3,12,n
        cs=cmplx(real(i1-12),real(-i1))
        do 11 i2=3,12,3
          ds=cs*i2+i2*2*imag(cs)-d(i1-2,i2-2)
          do 12 i3=5,1,-1
            c(i1-2,i2+m2-2,i3+m1)=ds
            c(i1-1,i2+m1-2,i3+m2)=ds*2
  12      continue
          b(i1-2,i2-2,3)=cs+ds
  11    continue
  10  continue
      write(6,*) c,b,ds,cs
      stop
      end

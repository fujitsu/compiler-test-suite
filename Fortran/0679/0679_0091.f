      program main
      real a(3,3,3),b(3,3,3)/9*1.0,9*2.0,9*3.0/
      real*8 d(3,3,3)
      complex*8 cs1/(1.,2.)/
      do 10 i1=1,3
      do 11 i2=1,3
        d(i1,i2,1)=-imag(cs1)
        d(i1,i2,2)=-imag(cs1)+2
        d(i1,i2,3)=-imag(cs1)*3
      do 12 i3=1,3
        t=b(i1,i2,i3)*2
        a(i1,i2,i3)=t-cs1
 12   continue
 11   continue
 10   continue
      write(6,*) d,a,t
      stop
      end

      program main
      real dv1(10),dv2(10)
      complex cv1(10),cv2(10)
      data cv1,cv2/10*(0.,0.),10*(0.,0.)/
      do 100 i=1,10
       dv1(i)=sin(i/3.14)
       dv2(i)=cos(dv1(i)/3.14)
  100 continue
      write(6,*) ' ***** loop1 ***** '
      write(6,1000) dv1
      write(6,1000) dv2
      call int1(dv1)
      call int2(dv2)
      cv1(1)=cmplx(0.0,0.0)
      do 200 i=2,10
       cv1(i)=cmplx(dv1(i),dv2(i))
       dv1(i-1)=dv2(i)
       cv2(i)=csqrt(cv1(i))
  200 continue
      write(6,*) ' ***** loop2 ***** '
      write(6,1001) cv1
      write(6,1001) cv2
 1000 format(10f7.2)
 1001 format(3(1x,'(',e9.2,e9.2,1x')'))
      stop
      end
      subroutine int1(a)
      real a(10)
      do 10 i=1,10
       a(i)=i
   10 continue
      return
      end
      subroutine int2(a)
      real a(10)
      do 10 i=1,10
       a(i)=i*10
   10 continue
      return
      end

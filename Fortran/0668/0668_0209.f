      program main
      real dv1(10),dv2(10)
      complex cv1(10),cv2(10)
      equivalence (equ1,equ2)
      common //com1
      cv1(1)=cmplx(0.0,0.0)
      do 100 i=1,10
      call int1(dv1)
      call int2(dv2)
       cv1(i)=cmplx(dv1(i),dv2(i))
       dv1(i)=dv2(i)
       cv2(i)=csqrt(cv1(i))
  100 continue
      write(6,*) ' ***** loop1 ***** '
      write(6,1001) cv1
      write(6,1001) cv2
      write(6,*) ' ***** loop2 ***** '
      do 200 i=1,10
       cv1(i)=cmplx(dv1(i),dv2(i))
       cv2(i)=csqrt(cv1(i))
       write(6,1001) cv1(i),cv2(i)
  200 continue
      write(6,*) ' ***** loop3 ***** '
      do 300 i=1,10
       dv1(i)=1.
       dv2(i)=2.
       cv1(i)=cmplx(dv1(i),dv2(i))
       write(6,1002) cv1(i)
  300 continue
      do 400 i=1,10
       equ1=i
       call sub1(equ1)
       dv1(i)=equ2
  400 continue
      write(6,*) ' ***** loop4 ***** '
      write(6,1003) dv1
 1000 format(10f7.2)
 1001 format(2(1x,'(',e9.2,e9.2,1x')'))
 1002 format(1x,'(',e9.2,e9.2,1x')')
 1003 format(5f10.3)
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
      subroutine sub1(a)
       a=sin(a)
      return
      end

      program main
      common    //dv1,dv3,ias
      real*8    dv1(10),dv2(10),dv3(10),dv4(10)
      integer*4   ias
      data dv4/10*0.0/
      call init(dv1,dv2,dv3,10)
      ias=1
      do 10 i=2,10
       dv4(i)=dv2(i)*2
       dv1(i)=dv2(i)*dv2(i)
       dv3(i)=dv1(i)
       call sub1
  10  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      write(6,*) dv4
      ias=1
      do 20 i=2,10
       dv4(i)=dv2(i)*dv2(i)
       call sub1
  20  continue
      write(6,*) dv2
      write(6,*) dv4
      stop
      end
      subroutine init(dv1,dv2,dv3,n)
      real*8 dv1(n),dv2(n),dv3(n)
      do 10 i=1,n
        dv1(i)=1.d0/i
        dv2(i)=i
        dv3(i)=dv1(i)*dv2(i)
  10  continue
      return
      end
      subroutine sub1
      common    //dv1,dv3,ias
      real*8    dv1(10),dv3(10)
      integer*4   ias
      dv1(5)=ias*ias
      ias=dv1(5)+3.
      do 10 i=1,10
       dv3(i)=dv1(i)+dv3(i)
  10  continue
      return
      end

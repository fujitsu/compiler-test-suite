      program main
      real*8    dv1(10,10),dv2(10,10),dv3(10,10)
      integer*4   ias
      call init(dv1,dv2,dv3,100)
      ias=1
      do 10 i=2,10
       ias=dv2(2,i)*2
       do 10 j=2,10
        dv1(j,i)=dv2(j,i)*dv2(i,j)
        dv3(j,i)=dv1(i,j)
        dv3(j,i)=dv1(j,j)
  10  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      ias=1
      do 20 i=2,10
       ias=dv2(2,i)*2
       do 20 j=2,10
        dv1(j,i)=dv2(j,i)*dv2(i,j)
        dv3(j,i)=dv1(i,j)
        dv2(j,i)=dv1(j,j)
  20  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      ias=1
      do 30 i=2,10
       ias=dv2(2,i)*2
       do 30 j=2,10
        dv1(j,i)=dv2(j,i)*dv2(i,j)
        dv3(j,i)=ias
        dv2(j,i)=dv1(j,j)
  30  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      write(6,*) ias
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

      program main
      real*8    dv1(10,10),dv2(10,10),dv3(10,10),dv4(10,10)
      integer*4   ias
      call init(dv1,dv2,dv3,100)
      ias=1
      do 10 i=2,10
       ias=dv2(2,i)*2
       do 11 j=2,10
        dv1(j,i)=dv2(j,i)*dv2(i,j)
  11    dv3(j,i)=dv1(j,i)
       do 12 j=2,10
        dv4(j,i)=dv2(j,i)*dv2(i,j)
  12   continue
  10  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      ias=1
      do 20 i=2,10
       do 21 j=2,10
        dv1(j,i)=dv2(j,i)*dv2(i,j)
  21   continue
       ias=dv2(2,i)*2
       do 22 j=2,10
        dv3(j,i)=dv1(i,j)
  22   continue
  20  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
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

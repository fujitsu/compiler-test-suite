      program main
      real*8  dv1(100),dv2(100),dv3(101)
      common  //dv1,dv2,dv3
      call init
      do 100 i=1,99
        dv3(i) = dv1(i)*dv2(i)
        goto 100
  120   ds = dv3(i)/2.
        goto 110
  100 continue
      write(6,600) (dv1(j),j=1,100,11)
      write(6,600) (dv2(j),j=1,100,11)
      write(6,600) (dv3(j),j=1,100,11)
  600 format (1h ,3d20.13)
      goto 120
  110 dv3(i)=ds-dv1(i)
      write(6,*) i,dv3(i),ds
      stop
      end

      subroutine init
      common //dv
      real*8 dv(301)
      do 10 i=1,301
        dv(i)=i
   10 continue
      return
      end

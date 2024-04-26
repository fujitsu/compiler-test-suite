      program main
      real*8  dv1(100),dv2(100),dv3(100)
      common  //dv1,dv2,dv3
      call init
      do 100 i=1,100
        ds = dv1(i)*dv2(i)
        goto 110
  120   dv3(i)=ds*dv3(i)+7.
  100 continue
      write(6,600) (dv1(i),i=1,100,11)
      write(6,600) (dv2(i),i=1,100,11)
      write(6,600) (dv3(i),i=1,100,11)
  600 format (1h ,3d20.13)
      stop
  110 dv3(i)=ds-dv1(i)
      goto 120
      end

      subroutine init
      common //dv
      real*8 dv(300)
      do 10 i=1,300
        dv(i)=i
   10 continue
      return
      end

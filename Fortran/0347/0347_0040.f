      program main
      real*8  dv1(10,10),dv2(11,9),dv3(3,30),dv4(1000)
      common  //dv1,dv2,dv3,dv4
      call init(n,m)
      do 10 i=1,100
   10   dv3(2,i)=i
      write(6,*) dv3
      write(6,600) (dv4(i),i=1,1000,101)
      do 20 i=1,n
        dv2(i,m) = dv1(i,m)*dv3(m,i)
   20 continue
      write(6,600) (dv1(i,m),i=1,10)
      write(6,600) (dv2(i,m),i=1,11)
      write(6,600) (dv3(m,i),i=1,30)
      do 30 i=1,n
        dv2(i,m) = m/ dv3(m,i)
        dv1(m,m) = dv1(m,m)+dv2(i,m)
   30 continue
      write(6,600) (dv1(i,m),i=1,10)
      write(6,600) (dv2(i,m),i=1,11)
      write(6,600) (dv3(m,i),i=1,30)
      do 40 i=1,n
        dv2(i,m) = dv1(i,m)*dv3(m,i)
        m=mod(i,4)+1
   40 continue
      write(6,600) (dv1(i,m),i=1,10)
      write(6,600) (dv2(i,m),i=1,11)
      write(6,600) (dv3(m,i),i=1,30)
      stop
  600 format (1h ,3d20.13)
      end

      subroutine init(n,m)
      common //dv
      real*8 dv(1200)
      do 10 i=1,1200
        dv(i)=i
   10 continue
      m=2
      n=10
      return
      end

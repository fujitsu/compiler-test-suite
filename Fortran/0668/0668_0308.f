      program main
      real*8      a(512,512),b(512,512),c(512,512),d(512,512)
      complex*16  w(256,256),x(256,256),y(256,256),z(256,256)
      common /com/a,b,c,d,w,x,y,z
      do 20 i=1,512
        do 10 j=1,512
          a(i,j)=0.0
          b(i,j)=1.0
          c(i,j)=2.0
          d(i,j)=3.0
   10   continue
   20 continue
      do 40 i=1,256
        do 30 j=1,256
          w(i,j)=(0.0,0.0)
          x(i,j)=(1.0,1.0)
          y(i,j)=(2.0,2.0)
          z(i,j)=(3.0,3.0)
   30   continue
   40 continue
      call sstst1(1)
      call sstst1(256)
      call sstst2
      call sstst3
      stop
      end
      subroutine sstst1(n)
      real*8     a(512,512),b(512,512),c(512,512),d(512,512)
      complex*16 w(256,256),x(256,256),y(256,256),z(256,256)
      common /com/a,b,c,d,w,x,y,z
      do 10 j=1,512
        do 20 i=1,n
          a(i,j)=a(i,j)+b(i,j)*c(i,j)-dabs(d(i,j))
   20   continue
   10 continue
      do 30 j=1,256
        do 40 i=1,n
          w(i,j)=w(i,j)+x(i,j)*y(i,j)*z(i,j)
   40   continue
   30 continue
      write(6,*) ' ** com-array test ** (',n,')'
      write(6,*) ' '
      write(6,*) ' '
      write(6,*) (a(1,j)*1.0,j=1,512,4)
      write(6,*) ' '
      write(6,*) (w(1,j)*1.0,j=1,256,4)
      return
      end
      subroutine sstst2
      real*8     a(512,512),b(512,512),c(512,512),d(512,512)
      complex*16 w(256,256),x(256,256),y(256,256),z(256,256)
      common /com/a,b,c,d,w,x,y,z
      real*8     s,t
      a(512,512)=9999.0
      s = a(1,1)
      do 1 i=1,512
        do 2 j=1,512
          s = dmax1(s,a(i,j))
    2   continue
    1 continue
      write(6,*) ' ** com-array test ** (2)'
      write(6,*) ' '
      write(6,*) s
      w(256,256)=(-9999.0,-9999.0)
      t = dreal(w(1,1))
      do 3 i=1,256
        do 4 j=1,256
          t = dmin1(t,dreal(w(i,j)))
    4   continue
    3 continue
      write(6,*) ' ** com-array test ** (3)'
      write(6,*) ' '
      write(6,*) t
      return
      end
      subroutine sstst3
      real*8     a(512,512),b(512,512),c(512,512),d(512,512)
      complex*16 w(256,256),x(256,256),y(256,256),z(256,256)
      common /com/a,b,c,d,w,x,y,z
      do 1 i=1,256
        do 2 j=1,5
           a(i,j) = b(i,j) + c(i,j) * d(i,j)
           w(i,j) = x(i,j) + y(i,j) * z(i,j)
    2   continue
    1 continue
      write(6,*) ' ** com-array test ** (4)'
      write(6,*) ' '
      write(6,*) ' '
      write(6,*) (a(i,1)*1.0,i=1,5)
      write(6,*) ' '
      write(6,*) (w(i,1)*1.0,i=1,5)
      return
      end

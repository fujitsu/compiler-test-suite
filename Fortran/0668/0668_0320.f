      program main
      implicit real*8(a-h,o-z)
      common /com/a(512),b(1,512),c(512,1),d(256,2),e(128,4)
      common /msu/a1(512),b1(1,512),c1(512,1),d1(256,2),e1(128,4)
      common /ind/idata(2050)
      do 10 i=1,2050
      j=i-2
10    idata(i)=j
      do 1 i=1,512
      a(i)=1.
      b(1,i)=2.
1     c(i,1)=3.
      do 2 j=1,4
      do 2 i=1,256
      if(j.gt.2) goto 2
      d(i,j)=4.
2     continue
      do 3 j=1,4
      do 3 i=1,128
3     e(i,j)=5.
      do 11 i=1,512
      a1(i)=a(i)
      b1(1,i)=b(1,i)
11     c1(i,1)=c(i,1)
      do 12 j=1,4
      do 12 i=1,256
      if(j.gt.2) goto 12
       d1(i,j)=d(i,j)
12    continue
      do 13 j=1,4
      do 13 i=1,128
13     e1(i,j)=e(i,j)
      write(6,*) ' item1 '
      write(6,*) a1(1),b1(1,1),b1(1,512),c1(1,1),c1(512,1)
      write(6,*) d1(1,1),d1(1,2),d1(256,1),e1(1,1),e1(128,1),e1(4,4)
      call sub1(a,b,c,d,e)
      call sub2(a,b,c,d,e)
      call sub4(a,b,c,d,e)
      stop
      end
      subroutine sub1(a,b,c,d,e)
      implicit real*8(a-h,o-z)
      common /ind/idata(2050)
      real*8      a(512),b(1,512),c(512,1),d(256,2),e(128,4)
      common /msu/a1(512),b1(1,512),c1(512,1),d1(256,2),e1(128,4)
      do 1 i=1,512
      a(i)=1.
      b(1,i)=2.
1     c(i,1)=3.
      do 2 j=1,4
      do 2 i=1,256
      if(j.gt.2) goto 2
      d(i,j)=4.
2     continue
      do 3 j=1,4
      do 3 i=1,128
3     e(i,j)=5.
      do 11 i=1,512
      a1(i)=a(i)
      b1(1,i)=b(1,i)
11     c1(i,1)=c(i,1)
      do 12 j=1,4
      do 12 i=1,256
      if(j.gt.2) goto 12
       d1(i,j)=d(i,j)
12    continue
      do 13 j=1,4
      do 13 i=1,128
13     e1(i,j)=e(i,j)
      write(6,*) ' item2 '
      write(6,*) a1(1),a1(512),a1(512),b1(1,1),b1(1,512)
      write(6,*) c1(1,1),c1(512,1)
      write(6,*) d1(1,1),d1(1,2),d1(256,1),e1(1,1),e1(128,1),e1(4,4)
      return
      end
      subroutine sub2(a,b,c,d,e)
      implicit real*8(a-h,o-z)
      common /ind/idata(2050)
      real*8      a(512),b(1,512),c(512,1),d(256,2),e(128,4)
      common /msu/a1(512),b1(1,512),c1(512,1),d1(256,2),e1(128,4)
      do 1 i=512,1,-1
      a(i)=b(1,i)
      b(1,i)=3.
1     c(i,1)=b(1,i)
      do 11 i=512,1,-1
      a1(i)=a(i)
      b1(1,i)=b(1,i)
11     c1(i,1)=c(i,1)
      do 2 j=1,4
      do 2 i=256,1,idata(1)
      if(j.gt.2) goto 2
      d1(i,j)=d(i,j)
2     continue
      do 3 j=1,10
      do 3 i=1,idata(2)
      e(i,j)=e(i,j+idata(3))
3     e1(i,j)=e(i,j)
      write(6,*) ' item3 '
      write(6,*) a1(1),b1(1,1),b1(1,512),c1(1,1),c1(512,1)
      write(6,*) d1(1,1),d1(1,2),d1(256,1),e1(1,1),e1(128,1),e1(4,4)
      do 4 i=512,1,-idata(3)
      a(i)=b(1,i)+1
      b(1,i)=5.
4     c(i,1)=b(1,i)+4
      do 14 i=512,1,-idata(3)
      a1(i)=a(i)
      b1(1,i)=b(1,i)
14     c1(i,1)=c(i,1)
      write(6,*) a1(1),b1(1,1),b1(1,512),c1(1,1),c1(512,1)
      return
      end
      subroutine sub4(a,b,c,d,e)
      implicit real*8(a-h,o-z)
      common /ind/idata(2050)
      real*8      a(512),b(1,512),c(512,1),d(256,2),e(128,4)
      common /msu/a1(512),b1(1,512),c1(512,1),d1(256,2),e1(128,4)
      do 1 i=1,512
      a1(i)=sin(a(i))
      b1(1,i)=cos(a(i))
1     c1(i,1)=c(i,1)**c(512,1)
      do 2 j=1,4
      do 2 i=1,256
      if(j.gt.2) goto 2
      d1(i,j)=sqrt(d(i,j))
2     continue
      do 3 j=1,4
      do 3 i=1,128
3     e1(i,j)=2.**e(i,j)+e(1,1)
      write(6,*) ' item4 '
      write(6,*) a1(1),a1(512),a1(512),b1(1,1),b1(1,512)
      write(6,*) c1(1,1),c1(512,1)
      write(6,*) d1(1,1),d1(1,2),d1(256,1),e1(1,1),e1(128,1),e1(4,4)
      return
      end

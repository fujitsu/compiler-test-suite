      program main
      real*8 a(1024)
      data   a/1024*0.0/
      n=5
      call sub1(n)
      write(6,*) a(1),a(512),a(513),a(1024)
      stop
      end
      subroutine sub1(n)
      real*8 a(1024),b(1024,256),c(1024,100),d(1024)
      real*8 e(1024)
      data   c/102400*1.0/
      do 11 i=1,256
      do 11 j=1,1024
 11   b(j,i)=1.0
      if(n.gt.6) goto 99
      do 10 k=1,256
      do 10 i=1,1024
      e(i)=c(i,1)+b(i,1)
      d(i)=e(i)
 10   a(i)=d(i)+b(i,k)
 99   continue
      return
      end

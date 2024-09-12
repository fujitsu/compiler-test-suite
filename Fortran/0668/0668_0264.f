      program main
      integer i4a(16),i4b(32),i4c(64),i4d(128),i4e(256),i4f(512)
      real    r4a(64),r4b(128),r4c(256),r4d(512),r4e(1024),r4f(2048)
      real*8  r8a(32),r8b(64),r8c(128),r8d(256),r8e(512),r8f(1024)
      common /ii4/i4a,i4b,i4c,i4d,i4e,i4f
      common /rr4/r4a,r4b,r4c,r4d,r4e,r4f
      common /rr8/r8a,r8b,r8c,r8d,r8e,r8f
      r4f(2048) = 0
      r8f(1024) = 0
      call sub1
      call sub2
      call sub3
      write(6,99) i4a(16),i4b(32),i4c(64),i4d(128),i4e(256),i4f(512)
      write(6,9)r4a(64),r4b(128),r4c(256),r4d(512),r4e(1024),r4f(2048)
      write(6,999)r8a(16),r8b(32),r8c(64),r8d(128),r8e(512),r8f(1024)
999   format(5(f9.6))
 99   format(10(i4))
  9   format(5(f7.4))
      stop
      end
      subroutine sub1
      integer i4a(16),i4b(32),i4c(64),i4d(128),i4e(256),i4f(512)
      common /ii4/i4a,i4b,i4c,i4d,i4e,i4f
      iloop=16
      do 10 i=1,iloop
       i4a(i)=i
 10    icnt=i4a(i)+i4a(i)
      iloop=iloop+iloop
      do 11 i=1,iloop
       i4b(i)=i
 11    icnt=i4b(i)+i4b(i)
      iloop=iloop+iloop
      do 12 i=1,iloop
       i4c(i)=i
 12    icnt=i4c(i)+i4c(i)
      iloop=iloop+iloop
      do 13 i=1,iloop
       i4d(i)=i
 13    icnt=i4d(i)+i4d(i)
      iloop=iloop+iloop
      do 15 i=1,iloop
       i4e(i)=i
 15    icnt=i4e(i)+i4e(i)
      iloop=iloop+iloop
      do 16 i=1,iloop
       i4f(i)=i
 16    icnt=i4f(i)+i4f(i)
      iloop=iloop+iloop
      return
      end
      subroutine sub2
      real    r4a(64),r4b(128),r4c(256),r4d(512),r4e(1024),r4f(2048)
      common /rr4/r4a,r4b,r4c,r4d,r4e,r4f
      iloop=64
      do 10 i=1,iloop
       r4a(i)=2.0
 10    r4b(i)=r4a(i)*r4a(i)
      iloop=iloop+iloop
      do 11 i=1,iloop
       r4b(i)=1.0
 11    r4c(i)=r4b(i)*r4b(i)
      iloop=iloop+iloop
      do 12 i=1,iloop
       r4c(i)=2.0
 12    r4d(i)=r4c(i)*r4c(i)
      iloop=iloop+iloop
      do 13 i=1,iloop
       r4d(i)=1.1
 13    r4e(i)=r4d(i)*r4d(i)
      iloop=iloop+iloop
      do 14 i=1,iloop
       r4e(i)=2.0
 14    r4f(i)=r4e(i)*r4e(i)
      return
      end
      subroutine sub3
      real*8  r8a(32),r8b(64),r8c(128),r8d(256),r8e(512),r8f(1024)
      common /rr8/r8a,r8b,r8c,r8d,r8e,r8f
      iloop=32
      do 10 i=1,iloop
       r8a(i)=2.0
 10    r8b(i)=r8a(i)*r8a(i)
      iloop=iloop+iloop
      do 11 i=1,iloop
       r8b(i)=1.0
 11    r8c(i)=r8b(i)*r8b(i)
      iloop=iloop+iloop
      do 12 i=1,iloop
       r8c(i)=2.0
 12    r8d(i)=r8c(i)*r8c(i)
      iloop=iloop+iloop
      do 13 i=1,iloop
       r8d(i)=1.1
 13    r8e(i)=r8d(i)*r8d(i)
      iloop=iloop+iloop
      do 14 i=1,iloop
       r8e(i)=2.0
 14    r8f(i)=r8e(i)*r8e(i)
      return
      end

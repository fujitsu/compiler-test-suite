      program main
      call sub1
      call sub2
      stop
      end
      subroutine sub1
      integer i4a(11),i4b(10),i4c(10,11),i4d(11,10)
      real    r4a(11),r4b(10),r4c(10,11),r4d(11,10)
      real*8  r8a(11),r8b(10),r8c(10,11),r8d(11,10)
      do 9 i=1,11
      i4a(i)=10
      r4a(i)=10.0
  9   r8a(i)=10.d0
      do 10 i=1,10
        i4b(i)=i4a(i+1)
       do 10 j=1,11
         i4c(i,j)=i4a(i)
         i4d(j,i)=i4c(i,j)
 10   continue
      do 11 i=1,10
        r4b(i)=r4a(i+1)
       do 11 j=1,11
         r4c(i,j)=r4a(i)
         r4d(j,i)=r4c(i,j)
 11   continue
      do 12 i=1,10
        r8b(i)=r8a(i+1)
       do 12 j=1,11
         r8c(i,j)=r8a(i)
         r8d(j,i)=r8c(i,j)
 12   continue
      write(6,*)i4a,i4b,i4c,i4d
      write(6,*)r4a,r4b,r4c,r4d
      write(6,*)r8a,r8b,r8c,r8d
      return
      end
      subroutine sub2
      integer i4a(1024),i4b(1024),i4c(32,32),i4d(32,32)
      real    r4a(1024),r4b(1024),r4c(32,32),r4d(32,32)
      real*8  r8a(1024),r8b(1024),r8c(32,32),r8d(32,32)
      i4d=0
      r4d=0
      r8d=0
      do 10 i=1,1024
      i4a(i)=20
      r4a(i)=20.0
 10   r8a(i)=20.d0
      do 11 i=1,32
       do 11 j=1,32
         i4c(i,j)=10
         r4c(j,i)=10.0
 11      r8c(i,j)=10.d0
      do 12 i=1,1024
         i4b(i)=i4a(i)
         r4b(i)=i4a(i)
         r8b(i)=i4a(i)
 12   continue
      do 13 i=1,32
       do 13 j=1,32
         i4d(i,j)=i4d(j,i)
         r4d(j,i)=r4d(i,j)
         r8d(i,j)=r8d(j,i)
 13   continue
      write(6,*)i4a(1),i4a(64),i4a(256),i4a(512),i4a(1024)
      write(6,*)i4b(1),i4b(64),i4b(256),i4b(512),i4b(1024)
      write(6,*)i4c(1,1),i4c(4,4),i4c(8,8),i4c(16,16),i4c(32,32)
      write(6,*)i4d(1,1),i4d(4,4),i4d(8,8),i4d(16,16),i4d(32,32)
      write(6,*)r4a(1),r4a(64),r4a(256),r4a(512),r4a(1024)
      write(6,*)r4b(1),r4b(64),r4b(256),r4b(512),r4b(1024)
      write(6,*)r4c(1,1),r4c(4,4),r4c(8,8),r4c(16,16),r4c(32,32)
      write(6,*)r4d(1,1),r4d(4,4),r4d(8,8),r4d(16,16),r4d(32,32)
      write(6,*)r8a(1),r8a(64),r8a(256),r8a(512),r8a(1024)
      write(6,*)r8b(1),r8b(64),r8b(256),r8b(512),r8b(1024)
      write(6,*)r8c(1,1),r8c(4,4),r8c(8,8),r8c(16,16),r8c(32,32)
      write(6,*)r8d(1,1),r8d(4,4),r8d(8,8),r8d(16,16),r8d(32,32)
      return
      end

      program main
      real*4 ar2a1(10,10),ar2b1(10,10),ar2c1(10,10),
     @       ar3a1(10,2,2),ar3b1(10,2,2),ar3c1(10,2,2),
     @       ar3a2(2,10,2),ar3b2(2,10,2),ar3c2(2,10,2),
     @       ar3a3(2,2,10),ar3b3(2,2,10),ar3c3(2,2,10)
      real*4 ar4a1(10,2,2,2),ar4b1(10,2,2,2),ar4c1(10,2,2,2),
     @       ar4a2(2,10,2,2),ar4b2(2,10,2,2),ar4c2(2,10,2,2),
     @       ar4a3(2,2,10,2),ar4b3(2,2,10,2),ar4c3(2,2,10,2),
     @       ar4a4(2,2,2,10),ar4b4(2,2,2,10),ar4c4(2,2,2,10)
      real*4 ar7a7(2,2,2,2,2,2,10),
     @       ar7b7(2,2,2,2,2,2,10),
     @       ar7c7(2,2,2,2,2,2,10)
      do 10 i=1,10
      do 10 j=1,10
        ar2a1(j,i) = 0.0
        ar2b1(j,i) = 1.0
  10    ar2c1(j,i) = 2.0
      do 20 i=1,2
      do 20 j=1,2
      do 20 k=1,10
         ar3a1(k,j,i) = 0.0
         ar3b1(k,j,i) = 1.0
  20     ar3c1(k,j,i) = 2.0
      do 30 i=1,2
      do 30 j=1,10
      do 30 k=1,2
         ar3a2(k,j,i) = 0.0
         ar3b2(k,j,i) = 1.0
  30     ar3c2(k,j,i) = 2.0
      do 40 i=1,10
      do 40 j=1,2
      do 40 k=1,2
         ar3a3(k,j,i) = 0.0
         ar3b3(k,j,i) = 1.0
  40     ar3c3(k,j,i) = 2.0
      do 50 i=1,2
      do 50 j=1,2
      do 50 k=1,2
      do 50 l=1,10
         ar4a1(l,k,j,i) = 0.0
         ar4b1(l,k,j,i) = 1.0
  50     ar4c1(l,k,j,i) = 2.0
      do 60 i=1,2
      do 60 j=1,2
      do 60 k=1,10
      do 60 l=1,2
         ar4a2(l,k,j,i) = 0.0
         ar4b2(l,k,j,i) = 1.0
  60     ar4c2(l,k,j,i) = 2.0
      do 70 i=1,2
      do 70 j=1,10
      do 70 k=1,2
      do 70 l=1,2
         ar4a3(l,k,j,i) = 0.0
         ar4b3(l,k,j,i) = 1.0
  70     ar4c3(l,k,j,i) = 2.0
      do 80 i=1,10
      do 80 j=1,2
      do 80 k=1,2
      do 80 l=1,2
         ar4a4(l,k,j,i) = 0.0
         ar4b4(l,k,j,i) = 1.0
  80     ar4c4(l,k,j,i) = 2.0
      do 90 i1=1,10
      do 90 i2=1,2
      do 90 i3=1,2
      do 90 i4=1,2
      do 90 i5=1,2
      do 90 i6=1,2
      do 90 i7=1,2
        ar7a7(i7,i6,i5,i4,i3,i2,i1) = 0.0
        ar7b7(i7,i6,i5,i4,i3,i2,i1) = 1.0
   90   ar7c7(i7,i6,i5,i4,i3,i2,i1) = 2.0
      call dim2v(10,10,ar2a1,ar2b1,ar2c1)
      call dim2s(2,10,10,ar2a1,ar2b1,ar2c1)
      call dim3v(10,2,ar3a1,ar3b1,ar3c1,ar3a2,ar3b2,ar3c3,
     @                ar3a3,ar3b3,ar3c3)
      call dim3s(2,10,2,ar3a1,ar3b1,ar3c1,ar3a2,ar3b2,ar3c3,
     @                ar3a3,ar3b3,ar3c3)
      call dim4v(10,2,ar4a1,ar4b1,ar4c1,ar4a2,ar4b2,ar4c3,
     @                ar4a3,ar4b3,ar4c3,ar4a4,ar4b4,ar4c4)
      call dim4s(2,10,2,ar4a1,ar4b1,ar4c1,ar4a2,ar4b2,ar4c3,
     @                ar4a3,ar4b3,ar4c3,ar4a4,ar4b4,ar4c4)
      call dim7v(2,10,2,ar7a7,ar7b7,ar7c7)
      write(6,*) 'ar2a1= ',ar2a1
      write(6,*) 'ar3a1= ',ar3a1
      write(6,*) 'ar3a2= ',ar3a2
      write(6,*) 'ar3a3= ',ar3a3
      write(6,*) 'ar4a1= ',ar4a1
      write(6,*) 'ar4a2= ',ar4a2
      write(6,*) 'ar4a3= ',ar4a3
      write(6,*) 'ar4a4= ',ar4a4
      write(6,*) 'ar7a7= ',ar7a7
      stop
      end
      subroutine dim2v(ix,iy,a,b,c)
      integer*4 ix,iy
      real   *4 a(ix,iy),b(ix,iy),c(ix,iy)
      do 10 j=1,iy
      do 10 i=2,ix
        a(i,j) = a(i-1,j) * b(i,j) + c(i,j)
   10 continue
      do 20 i=1,ix
      do 20 j=2,iy
        a(i,j) = a(i,j-1) * b(i,j) + c(i,j)
   20 continue
      do 30 i=2,iy
        a(i,i) = a(i-1,i-1) * b(1,1) + c(1,1)
   30 continue
      return
      end
      subroutine dim2s(k,ix,iy,a,b,c)
      integer*4 k,ix,iy
      real   *4 a(ix,iy),b(ix,iy),c(ix,iy)
      do 10 j=1,iy-2
      do 10 i=2,ix
        a(i,j) = a(i-1,j+k) * b(i,j) + c(i,j)
   10 continue
      do 20 i=3,ix
      do 20 j=2,iy
        a(i-k,j) = a(i,j-1) * b(i,j) + c(i,j)
   20 continue
      do 30 i=3,ix
      do 30 j=3,iy
        a(i-k,j) = a(i-k,j-1) * b(i,j) + c(i,j)
   30 continue
      return
      end
      subroutine dim3v(ix,iy,a1,b1,c1,a2,b2,c2,a3,b3,c3)
      integer*4 ix,iy
      real   *4 a1(ix,iy,iy),b1(ix,iy,iy),c1(ix,iy,iy),
     @          a2(iy,ix,iy),b2(iy,ix,iy),c2(iy,ix,iy),
     @          a3(iy,iy,ix),b3(iy,iy,ix),c3(iy,iy,ix)
      do 10 k=1,iy
      do 10 j=1,iy
      do 10 i=2,ix
        a1(i,j,k)=a1(i-1,j,k) * b1(i,j,k) + c1(i,j,k)
   10 continue
      do 20 k=1,iy
      do 20 j=1,iy
      do 20 i=2,ix
        a2(j,i,k)=a2(j,i-1,k) * b2(j,i,k) + c2(j,i,k)
   20 continue
      do 30 k=1,iy
      do 30 j=1,iy
      do 30 i=2,ix
        a3(j,k,i)=a3(j,k,i-1) * b3(j,k,i) + c3(j,k,i)
   30 continue
      return
      end
      subroutine dim3s(n,ix,iy,a1,b1,c1,a2,b2,c2,a3,b3,c3)
      integer*4 n,ix,iy
      real   *4 a1(ix,iy,iy),b1(ix,iy,iy),c1(ix,iy,iy),
     @          a2(iy,ix,iy),b2(iy,ix,iy),c2(iy,ix,iy),
     @          a3(iy,iy,ix),b3(iy,iy,ix),c3(iy,iy,ix)
      do 10 k=1,iy
      do 10 j=2,iy
      do 10 i=2,ix
        a1(i,j-n+1,k)=a1(i-1,j,k) * b1(i,j,k) + c1(i,j,k)
   10 continue
      do 20 k=2,iy
      do 20 j=1,iy
      do 20 i=2,ix
        a2(j,i,k-n+1)=a2(j,i-1,k) * b2(j,i,k) + c2(j,i,k)
   20 continue
      do 30 k=1,iy
      do 30 j=2,iy
      do 30 i=2,ix
        a3(j-n+1,k,i)=a3(j,k,i-1) * b3(j,k,i) + c3(j,k,i)
   30 continue
      do 40 k=2,iy
      do 40 j=2,iy
      do 40 i=2,ix
        a3(j,k-n+1,i)=a3(j,k-n+1,i-1) * b3(j,k,i) + c3(j,k,i)
   40 continue
      return
      end
      subroutine dim4v(ix,iy,a1,b1,c1,a2,b2,c2,a3,b3,c3,a4,b4,c4)
      integer*4 ix,iy
      real   *4 a1(ix,iy,iy,iy),b1(ix,iy,iy,iy),c1(ix,iy,iy,iy),
     @          a2(iy,ix,iy,iy),b2(iy,ix,iy,iy),c2(iy,ix,iy,iy),
     @          a3(iy,iy,ix,iy),b3(iy,iy,ix,iy),c3(iy,iy,ix,iy),
     @          a4(iy,iy,iy,ix),b4(iy,iy,iy,ix),c4(iy,iy,iy,ix)
      do 10 l=1,iy
      do 10 k=1,iy
      do 10 j=1,iy
      do 10 i=2,ix
        a1(i,j,k,l) = a1(i-1,j,k,l) * b1(i,j,k,l) + c1(i,j,k,l)
   10 continue
      do 20 l=1,iy
      do 20 k=1,iy
      do 20 j=1,iy
      do 20 i=2,ix
        a2(j,i,k,l) = a2(j,i-1,k,l) * b2(j,i,k,l) + c2(j,i,k,l)
   20 continue
      do 30 l=1,iy
      do 30 k=1,iy
      do 30 j=1,iy
      do 30 i=2,ix
        a3(j,k,i,l) = a3(j,k,i-1,l) * b3(j,k,i,l) + c3(j,k,i,l)
   30 continue
      do 40 l=1,iy
      do 40 k=1,iy
      do 40 j=1,iy
      do 40 i=2,ix
        a4(j,k,l,i) = a4(j,k,l,i-1) * b4(j,k,l,i) + c4(j,k,l,i)
   40 continue
      return
      end
      subroutine dim4s(n,ix,iy,a1,b1,c1,a2,b2,c2,a3,b3,c3,a4,b4,c4)
      integer*4 n,ix,iy
      real   *4 a1(ix,iy,iy,iy),b1(ix,iy,iy,iy),c1(ix,iy,iy,iy),
     @          a2(iy,ix,iy,iy),b2(iy,ix,iy,iy),c2(iy,ix,iy,iy),
     @          a3(iy,iy,ix,iy),b3(iy,iy,ix,iy),c3(iy,iy,ix,iy),
     @          a4(iy,iy,iy,ix),b4(iy,iy,iy,ix),c4(iy,iy,iy,ix)
      do 10 l=2,iy
      do 10 k=1,iy
      do 10 j=1,iy
      do 10 i=2,ix
        a1(i,j,k,l-n+1) = a1(i-1,j,k,l) * b1(i,j,k,l) + c1(i,j,k,l)
   10 continue
      do 20 l=1,iy
      do 20 k=2,iy
      do 20 j=1,iy
      do 20 i=2,ix
        a2(j,i,k-n+1,l) = a2(j,i-1,k,l) * b2(j,i,k,l) + c2(j,i,k,l)
   20 continue
      do 30 l=1,iy
      do 30 k=1,iy
      do 30 j=2,iy
      do 30 i=2,ix
        a3(j,k,i,l) = a3(j-n+1,k,i-1,l) * b3(j,k,i,l) + c3(j,k,i,l)
   30 continue
      do 40 l=2,iy
      do 40 k=1,iy
      do 40 j=1,iy
      do 40 i=2,ix
        a4(j,k,l-n+1,i) = a4(j,k,l,i-1) * b4(j,k,l,i) + c4(j,k,l,i)
   40 continue
      do 50 i=2,iy
        a1(i-1,i-1,i-1,i-1) = a1(i-1,i-1,i-1,i-1) *
     @                        b1(1,1,1,1) + c1(1,1,1,1)
   50 continue
      return
      end
      subroutine dim7v(n,ix,iy,a1,b1,c1)
      integer*4 n,ix,iy
      real   *4 a1(iy,iy,iy,iy,iy,iy,ix),
     @          b1(iy,iy,iy,iy,iy,iy,ix),
     @          c1(iy,iy,iy,iy,iy,iy,ix)
      do 10 i1=1,iy
      do 10 i2=1,iy
      do 10 i3=1,iy
      do 10 i4=1,iy
      do 10 i5=1,iy
      do 10 i6=2,iy
      do 10 i7=2,ix
        a1(i1,i2,i3,i4,i5,i6,i7) = a1(i1,i2,i3,i4,i5,i6,i7-1) *
     @  b1(i1,i2,i3,i4,i5,i6,i7) + c1(i1,i2,i3,i4,i5,i6,i7)
   10 continue
      do 20 i1=1,iy
      do 20 i2=1,iy
      do 20 i3=1,iy
      do 20 i4=1,iy
      do 20 i5=1,iy
      do 20 i6=2,iy
      do 20 i7=2,ix
        a1(i1,i2,i3,i4,i5,i6-n+1,i7) = a1(i1,i2,i3,i4,i5,i6,i7-1) *
     @  b1(i1,i2,i3,i4,i5,i6,i7) + c1(i1,i2,i3,i4,i5,i6,i7)
   20 continue
      return
      end

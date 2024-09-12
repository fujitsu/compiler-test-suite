      program main
      implicit  real*8(a-h)
      common /blk1/ a(10,10),b(10,10),c(10,10)
      common /blk2/ d1(10,10,10),d2(10,10,10)
      data   dx,dy/1.d0,2.d0/
      do 10 i=1,10
       do 10 j=1,10
         a(i,j) = dx
         b(i,j) = dy
         c(i,j) = float(i)*dy
  10  continue
      dx = c(2,1)
      do 20 i=1,10
       do 20 j=1,10
        do 20 k=1,10
          d1(i,k,j) = dabs(dx-dy)*dx
          d2(i,j,k) = dabs(dy-dx)*dy
  20  continue
      call  sub(dx,dy)
      write(6,*) ' a = ',((a(i,j),i=1,5),j=1,5)
      write(6,*) ' d1= ',(((d1(i,j,k),i=1,5),j=1,5),k=1,5)
      write(6,*) ' d2= ',(((d2(i,j,k),i=1,5),j=1,2),k=1,2)
      stop
      end
      subroutine  sub(dx,dy)
      implicit  real*8(a-h)
      common /blk1/ a(10,10),b(10,10),c(10,10)
      common /blk2/ d1(10,10,10),d2(10,10,10)
      dimension e1(100),e2(100,10),e3(100,10)
      equivalence (e1(1),a(1,1))
      equivalence (e2(1,1),d1(1,1,1)),(e3(1,1),d2(1,1,1))
      do 10 i=1,10
        dx = b(i,10)-dfloat(i)
        dy = c(i,10)
        do 100 j=1,100
         do 100 k=1,10
           e2(j,k) = e3(j,k)+e1(j)/dy+dx
           e3(j,k) = e1(j)*dy
  100 continue
  10  continue
      return
      end

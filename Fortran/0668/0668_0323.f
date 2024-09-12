      program main
      implicit real*8(a-h,o-z)
      common /com/a(10),b(10),c(10,10),d(10,10),z(10)
      common /msu/indata(10)
      do 100 i=1,10
       a(i)=1
       b(i)=a(i)
       z(i)=a(i)
       indata(i)=a(i)
      do 100 j=1,10
       c(i,j)=a(i)*a(i)
       d(i,j)=b(i)*b(i)
  100 continue
      indata(1)=0
      call sub1(a,b,c,d,z)
      call sub2(a,b,c,d,z)
      call sub3(a,b,c,d,z,indata)
      write(6,*) (a(i)*1.0,i=1,10)
      write(6,*) (b(i)*1.0,i=1,10)
      write(6,*) (z(i)*1.0,i=1,10)
      write(6,*) (indata(i),i=1,10)
      write(6,*) ((c(i,j)*1.0,i=1,5),j=1,5)
      write(6,*) ((d(i,j)*1.0,i=1,5),j=1,5)
      stop
      end
      subroutine sub1(a,b,c,d,z)
      implicit real*8(a-h,o-z)
      dimension a(10),b(10),c(10,10),d(10,10),z(10)
      common /msu/indata(10)
      do 100 i=1,indata(1)
        a(i)=b(i)
  100 continue
      do 101 i=1,indata(1)
        b(i)=a(i)
  101 continue
      do 200 i=1,10
       do 200 j=10,1,-2
        c(i,j)=d(i,j)
  200 continue
      do 201 i=1,10
       do 201 j=10,1,-3
        c(i,j)=d(i,j)
  201 continue
      do 300 i=1,10
        if(i.eq.z(i)) then
                        a(i)=b(i)
                      else
                        a(i)=z(i)
       endif
  300 continue
      do 301 i=1,10
       if(i.eq.1.or.i.eq.4.or.i.eq.7.or.i.eq.10) then
                                        a(i)=b(i)
                                                 else
                                        a(i)=z(i)
       endif
  301 continue
      write(6,*) (a(i)*1.0,i=1,10)
      write(6,*) (b(i)*1.0,i=1,10)
      write(6,*) (z(i)*1.0,i=1,10)
      write(6,*) (indata(i),i=1,10)
      write(6,*) ((c(i,j)*1.0,i=1,5),j=1,5)
      write(6,*) ((d(i,j)*1.0,i=1,5),j=1,5)
      stop
      end
      subroutine sub2(a,b,c,d,z)
      implicit real*8(a-h,o-z)
      dimension a(10),b(10),c(100),d(100),z(10)
      common /msu/indata(10)
      do 400 i1=100,1,-5
             c(i1)=d(i1)
  400 continue
      write(6,*) (a(i)*1.0,i=1,10)
      write(6,*) (b(i)*1.0,i=1,10)
      write(6,*) (z(i)*1.0,i=1,10)
      write(6,*) (indata(i),i=1,10)
      write(6,*) (c(i)*1.0,i=1,10)
      write(6,*) (d(i)*1.0,i=1,10)
      return
      end
      subroutine sub3(a,b,c,d,z,indata)
      implicit real*8(a-h,o-z)
      dimension a(10),b(10),c(10,10),d(10,10),z(10)
      dimension indata(10)
      do 500 i1=1,indata(1)
         if(i1.gt.a(i1).and.i1.lt.b(i1).and.i1.eq.z(i1)) then
            do 501 i2=1,indata(1)
              if(i1.ge.2.or.i1.eq.i2.and.i2.le.9.or.i2.eq.i1) then
                 c(i1,i2)=d(i2,i1)
              endif
  501       continue
         endif
  500 continue
      write(6,*) (a(i)*1.0,i=1,10)
      write(6,*) (b(i)*1.0,i=1,10)
      write(6,*) (z(i)*1.0,i=1,10)
      write(6,*) (indata(i),i=1,10)
      write(6,*) ((c(i,j)*1.0,i=1,5),j=1,5)
      write(6,*) ((d(i,j)*1.0,i=1,5),j=1,5)
      return
      end

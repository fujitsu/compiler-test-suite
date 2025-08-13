      program main
      call sub1()
      call sub2()
      end

      subroutine sub1()
      integer i,a(10),b(1)
      data (a(i),i=1,10),b(1)/0,1,2,3,4,5,6,7,8,9,0/
      k=0
      m=0
      i=1
 100  if ( i.gt.10 ) goto 101
      b(1)=b(1)+a(i)
      m=m+1
      i=i+1
      goto 100
 101  call sub(m)
      n=0
      j=1
      do while(j.le.m)
         b(1)=b(1)+a(j)
         j=j+1
         n=n+1
      enddo
      j=1
      do while(k.le.n)
         b(1)=b(1)+a(j)
         k=k+1
      enddo
      if ( b(1).eq.90 ) then
         print *,'OK'
      else
         print *,'NG'
         print *,'b(1)=',b(1)
      endif
      return
      end

      subroutine sub2()
      integer i,a(10),b(1)
      data (a(i),i=1,10),b(1)/0,1,2,3,4,5,6,7,8,9,0/
      m=0
      i=1
 100  continue
      b(1)=b(1)+a(i)
      m=m+1
      i=i+1
      if ( i.gt.10 ) goto 100
 101  call sub(m)
      n=0
      j=1
      do while(j.le.m)
         b(1)=b(1)+a(j)
         j=j+1
         n=n+1
      enddo
      k=1
      do while(k.le.n)
         b(1)=b(1)+a(k)
         k=k+1
      enddo
      if ( b(1).eq.90 ) then
         print *,'OK'
      else
         print *,'NG'
         print *,'b(1)=',b(1)
      endif
      return
      end

      subroutine sub(m)
      integer m
      m=10
      end

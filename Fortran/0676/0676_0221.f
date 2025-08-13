      program main
      call sub()
      end program
      
      subroutine sub
      integer i,a(10),b(1)
      data (a(i),i=1,10),b(1)/0,1,2,3,4,5,6,7,8,9,0/
      m=0
      n=0
      do i=1,10
 100     b(1)=b(1)+a(i)
         m=m+1
         if ( mod(i,11) .eq. 0 ) goto 100
      enddo
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
      if ( b(1).eq.135 ) then
         print *,'OK'
      else
         print *,'NG'
         print *,'b(1)=',b(1)
      endif
      end

      program main
      integer j,i
      integer sub1,sub2
      data i/0/
      j=1
      i=i+sub1(j)
      i=i+sub2()
      if ( i.eq.180 ) then
         print *,'OK'
      else
         print *,'NG'
         print *,'i=',i
      endif
      end

      integer function sub1(s)
      integer i,a(11),b(1),s
      data (a(i),i=1,11),b(1)/0,1,2,3,4,5,6,7,8,9,0,0/
      m=0
      n=0
      j=s
      do while(j.le.10)
         b(1)=b(1)+a(j)
         j=j+1
         n=n+1
      enddo
      do i=1,n
         b(1)=b(1)+a(i)
         m=m+1
      enddo
      k=1
      do while(k.le.m)
         b(1)=b(1)+a(j)
         k=k+1
      enddo
      sub1=b(1)
      return
      end
      
      integer function sub2()
      integer i,a(11),b(1),s
      data (a(i),i=1,11),b(1)/0,1,2,3,4,5,6,7,8,9,0,0/
      s=1
      m=0
      j=s
      do i=1,10
         b(1)=b(1)+a(i)
         m=m+1
      enddo
      n=0
      do while(j.le.m)
         b(1)=b(1)+a(j)
         j=j+1
         n=n+1
      enddo
      k=1
      do while(k.le.n)
         b(1)=b(1)+a(j)
         k=k+1
      enddo
      sub2=b(1)
      return
      end
      

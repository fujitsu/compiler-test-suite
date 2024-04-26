      integer a(10,10),b(10,10)
      a=10
      b=10
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      call sub1(a,b)
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=1,10
            if(a(j,i).ne.3)then
               print *,'ng'
            endif
            if(b(i,j).ne.3)then
               print *,'ng'
            endif
         enddo
      enddo
      print *,'ok'
      end

      subroutine sub1(a,b)
      integer a(10,10),b(10,10),c(10)
      do j=1,10
         c(j)=10
      enddo
      do j=1,10
         c(j)=10
      enddo
      do j=1,10
         c(j)=10
      enddo
      do j=1,10
         c(j)=10
      enddo
      do i=1,10
         do j=1,10
            a(i,j)=b(j,i)
            b(i,j)=a(j,i)
         enddo
      enddo
      do j=1,10
         c(j)=10
      enddo
      call sub2(a,b)
      return
      end

      subroutine sub2(a,b)
      integer a(10,10),b(10,10)
      integer t
      t=4
      do i=1,5
         do j=1,5
            a(j+t,i)=b(j,i)
            b(j,t+i)=a(j,i)
         enddo
         do k=1,5
            a(j+t,i)=b(j,i+t)
            b(j,i)=a(j+t,i)
         enddo
      enddo
      call sub3(a,b)
      return
      end

      subroutine sub3(a,b)
      integer a(10,10),b(10,10)
      do i=1,10
         do j=10,1,-1
            a(i,j)=3
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=10,1,-1
            a(i,j)=3
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=10,1,-1
            a(i,j)=3
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=10,1,-1
            a(i,j)=3
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=10,1,-1
            a(i,j)=3
            b(i,j)=a(j,i)
         enddo
      enddo
      do i=1,10
         do j=10,1,-1
            a(i,j)=3
            b(i,j)=a(j,i)
         enddo
      enddo
      return
      end

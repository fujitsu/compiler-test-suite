      program main
      integer*4 a(2,2),b(2,2),s,t,u
      s=0
      t=0
      do i =1,2
         do j =1,2
            a(j,i)=j+i
         enddo
      enddo
      do i =1,2
         do j =1,2
            b(j,i)=j*i
         enddo
      enddo
      do i =1,2
         do j =1,2
            s=s+a(j,i)
         enddo
      enddo
      do i =1,2
         do j =1,2
            t=t+b(j,i)
         enddo
      enddo
      u=s+t
      if ( u .eq. 21 ) then
         print *,'OK'
      else
         print *,'NG'
      endif
      end

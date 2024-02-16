
      integer,parameter::N=100
      real*8::a(N,N)=1.0
      real*8::b(N,N)=1.0


      do i=2,N
       do j=2,N
        a(j,i)=a(j-1,i-1)+a(j-1,i-1)/2.+1.
       enddo
      enddo


      do i=2,N
       do j=2,N
        b(j,i)=b(j-1,i-1)+b(j-1,i-1)/2.+1.
       enddo
      enddo

      print*,(a(50,i),i=1,N)
      do i=2,N
       do j=2,N
        if (a(j,i) /= b(j,i)) then
          print*, i, j, a(j,i), b(j,i)
        endif
       enddo        
      enddo
      print*, "OK"
      end

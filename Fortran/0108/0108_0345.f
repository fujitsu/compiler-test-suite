      integer,parameter::N=100
      real*8::a(N)=1.0
      real*8::b(N)=1.0

      do i=2,N
        a(i)=a(i-1)+a(i-1)/2.+1.
      enddo

      do i=2,N
        b(i)=b(i-1)+b(i-1)/2.+1.
      enddo

      do i=2,N
        if (a(i) /= b(i)) then
          print*, i, a(i), b(i)
          stop 'NG'
        endif        
      enddo
      print*, "OK"
      end

      integer,parameter::N=100
      integer::a(N)=1

      do i=2,N
       a(i)=a(i-1)+a(i)
      enddo
      print*,a
      end

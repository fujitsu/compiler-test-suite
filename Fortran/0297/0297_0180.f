      program main
      parameter(n=20)
      double precision a(n),b(n)
      call s131(a,b,n,n)
      write(6,99) a
 99   format(5f10.5)
      stop
      end
      subroutine s131(a,b,n,mm)
      double precision a(n),b(n)
      m=1
      call init(a,b,n)
      do j=1,mm
      do i=1,n-1
         A(I) = A(I+M) + B(I)
      enddo
      enddo
      return
      end
      subroutine init(a,b,n)
      double precision a(n),b(n)
      do i=1,n
        a(i) = i
        b(i) = i+1
      enddo
      return
      end

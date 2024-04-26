      program main
      parameter(n=20)
      double precision a(n),b(n)
      do i=1,n
        a(i) = i
        b(i) = i+1
      enddo
      call s421(a,b,n,3)
      write(6,99) a
 99   format(5f10.5)
      stop
      end
      subroutine s421(a,b,n,m)
      double precision a(n),b(n),x(20),y(20)
      equivalence(x(1),y(1))

      call init(20,x,0.0D0)
      call init(20,y,0.0D0)
      do j=1,m
      do i=1,n-1
         X(I) = Y(I+1) + A(I)
      enddo
      enddo
      do i=1,n
        a(i) = x(i)
       enddo      
      return
      end
      subroutine init(n,a,m)
      double precision a(n),m
      do i=1,n
        a(i) = m
      enddo
      return
      end

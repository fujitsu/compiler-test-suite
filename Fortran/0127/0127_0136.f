      program main
      call sub(100,10)
      stop
      end
      subroutine sub(n1,n2)
      real * 4 a(100,10),b(100),c(100,10),d(100,10)
      integer * 4 i,j;
      do j=1,n2
      do i=1,n1
        a(i,j) = i
        b(i) = i+1
        c(i,j) = i+2
        d(i,j) = i+3
      enddo
      enddo
      do j=2,10
      n = 1
      do i=1,49
        a(i,1) = a(i,1) +  d(n,j)
        n = n + 1
        b(n) = b(n) +  d(i,j) + a(i,j) 
        n = n + 1
        c(n,1) = c(n,1) +  a(i,j) + a(i,j) 
      enddo
      enddo
      print *,i,j
      write(6,99) a
 99   format(5f15.5)
      return
      end

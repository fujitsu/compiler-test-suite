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
      do j=1,9
      nn= 1
      n = 1
      do i=2,50
        a(n,j) = a(n,j) +  d(i,j)
        nn = nn + 1
        b(nn) = b(nn) +  d(n,j) + a(n,j) 
        n = n + 1
        c(n,j) = c(n,j) +  d(i,j) + 2
      enddo
      enddo
      print *,i,j
      write(6,99) a
 99   format(5f15.5)
      return
      end

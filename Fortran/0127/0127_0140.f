      program main
      integer * 2 n,nn
      n = 0
      nn = 0
      call sub(100,10,n,nn)
      print *,n,nn
      stop
      end
      subroutine sub(n1,n2,n,nn)
      real * 4 a(100,10),b(100),c(100,10),d(100,10)
      integer * 4 i,j;
      integer * 2 n,nn
      do j=1,n2
      do i=1,n1
        a(i,j) = i
        b(i) = i+1
        c(i,j) = i+2
        d(i,j) = i+3
      enddo
      enddo
      do j=2,n2
      nn= 1
      n = 1
      do i=2,49
        a(n,j) = a(n,j) +  d(n,j)
        nn = nn + 1
        b(nn) = b(nn) +  d(i,j) + j
        n = n + 1
        c(n,1) = c(n,1) +  d(i,j) + i
      enddo
      enddo
      print *,i,j
      write(6,99) a
 99   format(5f15.5)
      return
      end

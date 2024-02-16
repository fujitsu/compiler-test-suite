      program main
      integer * 4 n
      n = 0
      call sub(100,10,n)
      print *,n
      stop
      end
      subroutine sub(n1,n2,n)
      real * 4 a(100,10),b(100,10),c(100,10),d(100,10)
      integer * 4 i,j;
      do j=1,n2
      do i=1,n1
        a(i,j) = i
        b(i,j) = i+1
        c(i,j) = i+2
        d(i,j) = i+3
      enddo
      enddo

      j = 2
      n=1
      do i=1,50
        c(i,j) = c(i,j) +  d(n,j)
        if (mod(i,2) == 0) then
          a(n,j) = a(n,j) +  d(n,j)    
        else
          b(n,j) = b(n,j) +  d(n,j)
          n = n + 1
        endif
        if (mod(i,4) == 0) then
          a(n,j) = a(n,j) +  d(n,j)    
        else
          b(n,j) = b(n,j) +  d(n,j)
          n = n + 1
        endif
        n = n - 1
      enddo
      print *,i,j
      write(6,99) a
 99   format(5f15.5)
      return
      end

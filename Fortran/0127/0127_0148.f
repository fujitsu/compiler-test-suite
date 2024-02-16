      program main
      integer * 4 n
      common /com1/n
      call sub(100,10)
      print *,n
      stop
      end
      subroutine sub(n1,n2)
      integer * 4 n
      common /com1/n
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
      do j=2,10
      n=1
      do i=1,99
        a(i,j) = a(i,j) +  d(i,j)
        if (mod(i,2) == 0) then
          a(n,j) = a(n,j) +  d(n,j)    
          n = n + 1
        else
          b(n,j) = b(n,j) +  d(n,j)
          n = n + 1
        endif
        c(i,j) = c(i,j) +  a(n,j) + b(n,j)
      enddo
      enddo
      print *,i,j
      write(6,99) a
      write(6,99) c
 99   format(5f15.5)
      return
      end

      program main
      call sub()
      stop
      end
      subroutine sub()
      real * 4 a(100,10),b(100,10),c(100,10),d(100,10)
      integer * 4 i,j;
      do j=1,10
      do i=1,100
        a(i,j) = i
        b(i,j) = i+1
        c(i,j) = i+2
        d(i,j) = i+3
      enddo
      enddo
      j=1
      do i=2,100
        c(i,j) = a(i-1,j) +  d(i,j) 
        a(i,j) = b(i,j) * d(i,j) + c(i,j)
      enddo
      print *,i,j
      write(6,99) a
      write(6,99) c
 99   format(5f15.5)
      return
      end

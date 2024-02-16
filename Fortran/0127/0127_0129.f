! sum
      program main
      call sub()
      stop
      end
      subroutine sub()
      real * 4 a(100,10),b(100,10),c(100,10),d(100,10)
      real * 8 ss
      integer * 4 i,j;
      do j=1,10
      do i=1,100
        a(i,j) = i
        b(i,j) = i+1
        c(i,j) = i+2
        d(i,j) = i+3
      enddo
      enddo
      do j=2,10
      ss = 0
      do i=2,100
        a(i,1) = a(i-1,2) +  d(i,j) + c(i,j) + b(i,j) 
        ss = ss + b(i,j)
      enddo
      enddo
      print *,i,j
      write(6,*) ss
      write(6,99) a
 99   format(5f15.5)
      return
      end

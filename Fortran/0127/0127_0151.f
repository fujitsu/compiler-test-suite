      program main
      call sub(100,10)
      stop
      end
      subroutine sub(n1,n2)
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
      j=1
      ss  =0 
      do i=2,100
         c(i,j) = a(i-1,j) +  d(i,j) 
        if (mod(i,2) .eq.0 ) then
          ss = i
        endif
        a(i,j) = b(i,j) * d(i,j) + c(i,j)
      enddo
      write(6,*) ss
      write(6,99) a
 99   format(5f15.5)
      return
      end

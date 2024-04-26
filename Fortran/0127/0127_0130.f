      program main
      call sub(100,10)
      stop
      end
      subroutine sub(n1,n2)
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
      ss = 0
      do j=1,n2
      do i=2,n1
        a(i,1) = a(i-1,1) +  d(i,j) + b(i,j) + c(i,j)
        if (j.ge.5) then
          ss = ss + c(i,j)
        endif
      enddo
      enddo
      print *,i,j
      write(6,*) ss
      write(6,99) a
 99   format(5f15.5)
      return
      end

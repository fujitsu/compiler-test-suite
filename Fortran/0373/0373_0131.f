      subroutine sub(i,n)
      i = 2**n
      end
      program main
      do i=0,32
         call sub(j,i)
         print*,j
      enddo
      end

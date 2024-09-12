      program main
      integer a(10000,10000)
      do i=1,10000
        do j=1,10000
          a(j,i)=i+j
        enddo
      enddo
      call sub(a)

      print*, a(2000,3000)
      print*, a(3000,2000)

      end

      subroutine sub(a)
      integer a(10000,10000)
      do i=1,10000
        do j=1,10000
          a(j,i)=i*j
        enddo
      enddo

      return
      end

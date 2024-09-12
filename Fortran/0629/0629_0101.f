      program main
      real*8 z(10,20,30)

      call zran3(z,10,20,30)
      print*, z(10,10,10)
      end

      subroutine zran3(z,n1,n2,n3)
      integer n1, n2, n3
      real*8 z(n1,n2,n3)
      integer i1, i2, i3

      do i3=1,n3
        do i2=1,n2
          do i1=1,n1
            z(i1,i2,i3) = 0.0D0
          enddo
        enddo
      enddo

      return
      end

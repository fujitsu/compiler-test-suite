      real res(10,10)

      type FACE
      real a(10,10)
      real c(10,10)
      end type
      type (FACE)  fc

      do i=1,10
         do j=1,10
            fc%a(i,j) = i
            fc%c(i,j) = 0
            res(i,j) = i+2
         enddo
      enddo

      call sub(fc,10)


      do i=1,10
         do j=1,10
            if (fc%c(i,j).ne.res(i,j)) then
               write(6,*) fc%c
               write(6,*) res
               stop
            endif
         enddo
      enddo
      write(6,*) 'ok'
      end
      subroutine sub(fc,n)
      type FACE
      real a(10,10)
      real c(10,10)
      end type
      type (FACE)  fc

      do i=1,n

         do j=1,n

            fc%c(i,j) = rdelta(fc%a(i,j))
         enddo
      enddo
      end

      real function rdelta(r) result(y)
      real r
      y=r+2
      end

      real res(10)/3,4,5,6,7,8,9,10,11,12/

      type FACE
      real a(10)
      real c(10)
      end type
      type (FACE)  fc

      do i=1,10
         fc%a(i) = i
         fc%c(i) = 0
      enddo

      call sub(fc,10)


      do i=1,10
         if (fc%c(i).ne.res(i)) then
            write(6,*) fc%c
            write(6,*) res
            stop
         endif
      enddo
      write(6,*) 'ok'
      end
      subroutine sub(fc,n)
      type FACE
      real a(10)
      real c(10)
      end type
      type (FACE)  fc


      do i=1,n

         fc%c(i) = rdelta(fc%a(i))
      enddo
      end

      real function rdelta(r) result(y)
      real r
      y=r+2
      end

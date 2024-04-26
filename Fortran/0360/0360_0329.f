      real res(10,10)
      real a(10,10)
      real c(10,10)

      do i=1,10
         do j=1,10
            a(i,j) = i
            c(i,j) = 0
            res(i,j) = i+2
         enddo
      enddo

      call sub(a,c,10)


      do i=1,10
         do j=1,10
            if (c(i,j).ne.res(i,j)) then
               write(6,*) c
               write(6,*) res
               stop
            endif
         enddo
      enddo
      write(6,*) 'ok'
      end
      subroutine sub(a,c,n)
      real a(10,10)
      real c(10,10)

      do i=1,n

         do j=1,n

            c(i,j) = rdelta(a(i,j))
         enddo
      enddo
      end

      real function rdelta(r) result(y)
      real r
      y=r+2
      end

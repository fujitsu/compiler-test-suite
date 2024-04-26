      real a(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      real res(10)/3,4,5,6,7,8,9,10,11,12/
      call sub(a,c,10)

      do i=1,10
         if (c(i).ne.res(i)) then
            write(6,*) c
            write(6,*) res
            stop
         endif
      enddo
      write(6,*) 'ok'      
      end
      subroutine sub(a,c,n)
      real a(n),c(n)
      do i=1,n
         c(i) = rdelta(a(i))
      enddo
      end

      real function rdelta(r) result(y)
      real r(1)

      y=r(1)+2
      end

      real a(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*0/
      real res(10)/3,4,5,6,7,8,9,10,11,12/
      do i=1,10

         c(i) = rdelta(a(i))
      enddo


      do i=1,10
         if (c(i) .ne. res(i)) then
            write(6,*) c
            write(6,*) res
            stop
         endif
      enddo
      write(6,*) 'ok'
      end

      real function rdelta(r) result(y)
      real r
      y=r+2
      end

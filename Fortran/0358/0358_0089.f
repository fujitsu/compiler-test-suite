      real*8 a(10)/2,1,2,3,4,3,2,1,1,1/
      integer calc(11)/11*0/
      integer res(11)/0,2,3,4,5,6,7,8,0,0,8/
      call dgefa(a,calc)
      do i=1,11
         if (calc(i) .ne. res(i)) then
            write(6,*) "ng"
            write(6,*) res
            write(6,*) calc
            stop
         endif
      enddo
      write(6,*) "ok"
      end

      subroutine dgefa(a,calc)
      real*8 a(10,1)
      integer idamax,k,l,calc(11)

      do k = 1, 1
         l = idamax(a(k,k),calc)
         calc(11) = l
      end do
      return
      end

      integer function idamax(dx,calc)
      real*8 dx(10),dmax
      integer calc(11)

      idamax = 1
      dmax = dx(1)
      do i = 2,10
         if(dx(i).ne.dmax) then
            calc(i) = i
            idamax = i
            dmax = dx(i)
         endif
      enddo
      end

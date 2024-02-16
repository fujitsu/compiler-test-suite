      real*8  r(100),res(100)
      do i=1,100,2
         r(i) = 1
         r(i+1) = 10
         res(i) = 3
         res(i+1) = 1
      enddo
      call test1(r,res,100)
      end
      
      subroutine test1(r,res,n)
      logical ll(n)
      real*8  r(n),res(100)
      real*8  s,ss(n)
      do i=1,n
         ll(i) = r(i).gt.3
         if (ll(i)) then
            s = 1
         else
            s = 3
         endif
         ss(i) = s
      enddo
      call check(ss,res,n)
      end

      subroutine check(ss,res,n)
      real*8 ss(n),res(n)
      do i=1,n
         if (ss(i) .ne. res(i)) then
            write(6,*) i,ss(i),res(i)
            stop
         endif
      enddo
      write(6,*) 'ok'
      end

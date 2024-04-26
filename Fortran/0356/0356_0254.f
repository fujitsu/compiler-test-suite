      subroutine sub(a,n)
      real*8 a(7)
      do i=n,7
         a(i) = i
      end do
      return
      end

      real*8 a(8)/8*1/
      real*8 res1(8)/1,2,3,4,5,6,7,1/
      real*8 res2(8)/1,1,3,4,5,6,7,1/
      real*8 res3(8)/8*1/
      call sub(a,1)
      call check(a,res1,1)
      a = 1
      call sub(a,3)
      call check(a,res2,2)
      a = 1
      call sub(a,8)
      call check(a,res3,3)
      write(6,*) "ok"
      end

      subroutine check(a,res,num)
      real*8 a(8),res(8)
      do i=1,8
         if (a(i).ne.res(i)) then
            write(6,*) "ng",num
            write(6,*) a
            write(6,*) res
            return
         endif
      enddo
      return
      end

      subroutine sub(a,n)
      integer*4 a(9)
      do i=n,9
         a(i) = i
      end do
      return
      end

      integer*4 a(16)/16*1/
      integer res1(16)/1,2,3,4,5,6,7,8,9,7*1/
      integer res2(16)/5*1,6,7,8,9,7*1/
      integer res3(16)/16*1/
      call sub(a,1)
      call check(a,res1,1)
      a = 1
      call sub(a,6)
      call check(a,res2,2)
      a = 1
      call sub(a,10)
      call check(a,res3,3)
      write(6,*) "ok"
      end

      subroutine check(a,res,num)
      integer a(16),res(16)
      do i=1,16
         if (a(i).ne.res(i)) then
            write(6,*) "ng",num
            write(6,*) a
            write(6,*) res
            return
         endif
      enddo
      return
      end

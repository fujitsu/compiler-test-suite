      subroutine sub(a,b,n)
      integer*4 a(8)
      integer*8 b(8)
      do i=n,8
         a(i) = b(i) + 5
      end do
      end

      integer*4 a(20)/20*1/
      integer*8 b(20)/20*2/
      integer*4 res1(20)/8*7,12*1/
      integer*4 res2(20)/5*1,3*7,12*1/
      integer*4 res3(20)/20*1/
      call sub(a,b,1)
      call check(a,res1,1)
      a=1
      call sub(a,b,6)
      call check(a,res2,2)
      a=1
      call sub(a,b,10)
      call check(a,res3,3)
      write(6,*) "ok"
      end

      subroutine check(a,res,num)
      integer a(20),res(20)
      do i=1,20
         if (a(i).ne.res(i)) then
            write(6,*) "ng",num
            write(6,*) a
            write(6,*) res
            return
         endif
      enddo
      return
      end
